<?php

namespace App\Http\Policies;

use App\User;
use App\Topic;
use Illuminate\Auth\Access\HandlesAuthorization;

class TopicPolicy{
    use HandlesAuthorization;
    
    public function update(User $user, Topic $topic){
        return $user->ownsTopic($topic);
    }
    
    public function destroy(User $user, Topic $topic){
        return $user->ownsTopic($topic);
    }
}