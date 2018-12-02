<?php

use Illuminate\Http\Request;

/*
Route::middleware('auth:api')->post('/user', function (Request $request) {
    return $request->user();
});

*/

Route::get('/user', function (Request $request){
    return $request->user();
})->middleware('auth:api');



Route::post('/register', 'registerController@register');


Route::group(['prefix' => 'topics'], function(){
    
   Route::get('/{topic}', 'TopicController@show'); 
   Route::get('/', 'TopicController@index'); 
   Route::post('/', 'TopicController@store')->middleware('auth:api'); 
   Route::patch('/{topic}', 'TopicController@update')->middleware('auth:api'); 
   Route::delete('/{topic}', 'TopicController@destroy')->middleware('auth:api'); 
    
   Route::group(['prefix' => '/{topic}/posts'], function(){
       Route::post('/', 'PostController@store')->middleware('auth:api');
       //Route::get('/', 'PostController@index');
       Route::get('/{post}', 'PostController@show');
       Route::patch('/{post}', 'PostController@update')->middleware('auth:api');
       Route::delete('/{post}', 'PostController@destroy')->middleware('auth:api');
   }); 
    
    
    
    
});

Route::get('/posts', 'PostController@index');






















