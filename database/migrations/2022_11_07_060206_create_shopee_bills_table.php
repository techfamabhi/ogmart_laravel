<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('shopee_bills', function (Blueprint $table) {
            $table->id();
            $table->string('cid');
            $table->string('bill_amount');
            $table->string('bill_discount');
            $table->string('bill_date');
            $table->string('pay_made');
            $table->string('delivery_status');
            $table->string('bill_status');
            $table->string('exh_status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('shopee_bills');
    }
};
