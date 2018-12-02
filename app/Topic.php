<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Topic extends Model
{
    
    protected $fillable = ['title'];
    
    public function user(){
        return $this->belongsTo(User::class);
    }
    
    public function posts(){
        return $this->hasMany(Post::class);
    }
    
}
