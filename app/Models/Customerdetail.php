<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customerdetail extends Model
{
    use HasFactory;
    protected $fillable = [
            'name',
            'mobile',
            'email',
            'address',
            'city',
            'pin',
            'payment_mode',
            'payment_id'
            
         
];
}
