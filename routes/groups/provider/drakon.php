<?php

use App\Http\Controllers\Api\Games\GameController;
use Illuminate\Support\Facades\Route;

Route::post('drakon_api', [GameController::class, 'webhookDrakonMethod']);
