<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class shopee_customer extends Model
{
    use HasFactory;
    protected $fillable = [
            'name',
            'contact',
            'email',
            'address',
            'area',
            'pin',
         
];
}
