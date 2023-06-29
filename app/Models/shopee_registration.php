<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class shopee_registration extends Model
{
    use HasFactory;
    protected $fillable = [
            'full_name',
            'email',
            'address',
            'landmark',
            'city',
            'state',
            'tehsil',
            'pin',
            'mobile',
            'pan',
            'upi',
            'ref',
            'password',
            'status',
            'under_ref',
            'pstatus'
];
}
