<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class order extends Model
{
    use HasFactory;
    protected $fillable = [
            'bid',
            'pid',
            'price',
            'disc',
            'qty',
            'total'           
];
}
