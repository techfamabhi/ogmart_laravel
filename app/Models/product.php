<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class product extends Model
{
    use HasFactory;
    protected $fillable = [
        'pname',
        'des',
        'img',
        'hsn',
        'gst',
        'features',
        'price_sale',
        'price_purchase',
        'margin',
        'safety_information',
        'ingredients',
        'directions',
        'legal_disclaimer',
        'pstatus',
        'category',
        'brands',
        'pcode',
        'discount',
        'packing',


    ];
}
