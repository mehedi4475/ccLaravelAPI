<?php

namespace App;

use Laravel\Passport\HasApiTokens;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;


class User extends Authenticatable
{
    use Notifiable, HasApiTokens;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
    
    
    
    
    public function avatar(){
        return 'gravatar.com/avatar/'.md5($this->email).'.jpg';
    }
    
    public function ownsTopic(Topic $topic){
        return $this->id === $topic->user->id;
    }
    
    
    public function ownsPost(Post $post){
        return $this->id === $post->user->id;
    }
    
    
    
    
}
