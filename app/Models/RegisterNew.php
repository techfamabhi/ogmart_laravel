<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RegisterNew extends Model
{
    use HasFactory;
    protected $fillable = [
            'fname',
            'email',
            'mobile',
            'password'         
];
}
