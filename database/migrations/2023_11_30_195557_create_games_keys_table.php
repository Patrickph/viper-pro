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
        Schema::create('games_keys', function (Blueprint $table) {
            $table->id();
            $table->string('drakon_agent_code')->nullable();
            $table->string('drakon_agent_token')->nullable();
            $table->string('drakon_agent_secret')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('games_keys');
    }
};
