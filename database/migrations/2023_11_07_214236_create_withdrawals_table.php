<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('withdrawals', function (Blueprint $table) {
            $table->id();
            $table->string('payment_id')->nullable();
            $table->foreignId('user_id')->constrained('users')->cascadeOnDelete();
            $table->decimal('amount', 20, 2)->default(0);
            $table->string('proof')->nullable();
            $table->tinyInteger('status')->default(0);
            $table->string('pix_key')->nullable();
            $table->string('pix_type')->nullable();
            $table->string('type', 50)->nullable();
            $table->text('bank_info')->nullable();
            $table->string('currency', 50)->nullable();
            $table->string('symbol', 50)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('withdrawals');
    }
};
