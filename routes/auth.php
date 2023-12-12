<?php
namespace App\Http\Controllers\Authentification;
use App\Http\Controllers\Authentification\AuthentificationController;
use Illuminate\Support\Facades\Route;

Route::post('/auth/login', [AuthentificationController::class, 'store'])
        ->name('login');
Route::post('/auth/logout', [AuthentificationController::class, 'destroy'])
        ->name('logout');