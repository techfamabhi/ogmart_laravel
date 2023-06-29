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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('pname');
            $table->string('des');
            $table->string('img');
            $table->string('hsn');
            $table->string('gst');
            $table->string('features');
            $table->string('price_sale');
            $table->string('price_purchase');
            $table->string('margin');
            $table->string('safety_information');
            $table->string('ingredients');
            $table->string('directions');
            $table->string('legal_disclaimer');
            $table->string('pstatus');
            $table->string('category');
            $table->string('brands');
            $table->string('pcode');
            $table->string('discount');
            $table->string('packing');
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
        Schema::dropIfExists('products');
    }
};
