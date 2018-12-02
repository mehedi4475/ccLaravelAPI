<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateTopicRequest extends FormRequest{
    public function authorize(){
        return true;
    }
    
    public function rules(){
        return [
            'title' => 'max:255'
        ];
    }
}