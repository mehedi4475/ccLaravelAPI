<?php

namespace App\Http\Controllers;


use App\Topic;
use App\Post;
use App\User;

use Illuminate\Http\Request;
use App\Http\Requests\StorePostRequest;
use App\Http\Requests\UpdatePostRequest;
use App\Transformers\PostTransformer;
use League\Fractal\Pagination\IlluminatePaginatorAdapter;



class PostController extends Controller
{
    
    public function index(){
        
        $posts = Post::paginate(3);
        $postsCollection = $posts->getCollection();
        
        return fractal()
            ->collection($postsCollection)
            ->parseIncludes(['user'])
            ->transformWith(new PostTransformer)
            ->paginateWith(new IlluminatePaginatorAdapter($posts))
            ->toArray();
        
    }
   
    
    public function store(StorePostRequest $request, Topic $topic){
        
        $post = new Post;
        $post->body = $request->body;
        $post->user()->associate($request->user());
    
        $topic->posts()->save($post);
        
        
        return fractal()
            ->item($post)
            ->parseIncludes(['user'])
            ->transformWith(new PostTransformer)
            ->toArray();
    }
    
    
    
    public function show(Topic $topic, Post $post){
        
        return fractal()
            ->item($post)
            ->parseIncludes(['user', 'posts', 'posts.user'])
            ->transformWith(new PostTransformer)
            ->toArray();
    }
    
    
    
    
    public function update(UpdatePostRequest $request, Topic $topic, Post $post){
        
        $this->authorize('update', $post);
        
        
        $post->body = $request->get('body', $post->body);
        $post->save();
        
        return fractal()
            ->item($post)
            ->parseIncludes(['user'])
            ->transformWith(new PostTransformer)
            ->toArray();
    }
    
    public function destroy(Topic $topic, Post $post){
        $this->authorize('destroy', $post);
        $post->delete();
        return response(null, 204);
    }
    
    
}
