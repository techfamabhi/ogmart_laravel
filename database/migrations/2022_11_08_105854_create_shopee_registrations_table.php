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
        Schema::create('shopee_registrations', function (Blueprint $table) {
            $table->id();
            $table->string('full_name');
            $table->string('email');
            $table->string('address');
            $table->string('landmark');
            $table->string('city');
            $table->string('state');
            $table->string('tehsil');
            $table->string('pin');
            $table->string('mobile');
            $table->string('pan');
            $table->string('upi');
            $table->string('ref');
            $table->string('password');
            $table->string('status');
            $table->string('under_ref');
            $table->string('pstatus');
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
        Schema::dropIfExists('shopee_registrations');
    }
};
