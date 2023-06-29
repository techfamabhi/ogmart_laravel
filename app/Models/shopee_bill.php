<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class shopee_bill extends Model
{
    use HasFactory;
    protected $fillable = [
            'cid',
            'bill_amount',
            'bill_discount',
            'bill_date',
            'pay_made',
            'delivery_status',
            'bill_status',
            'exh_status'
    ];
}
