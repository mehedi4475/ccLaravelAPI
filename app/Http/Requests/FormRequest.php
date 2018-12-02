<?php

namespace App\Http\Reequests;

class FormRequest extends \Illuminate\Foundation\Http\FormRequest{
    public function response(array $errors){
        if($this->expectsJson()){
            return new JsonResponse([
                'data'  => $errors
            ], 422);
        }
        
        parent::response($errors);
        
    }
    
}