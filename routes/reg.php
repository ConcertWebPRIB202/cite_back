<?php
namespace App\Http\Controllers\Registration;
use App\Http\Controllers\Registration\RegistrationController;
use App\Http\Controllers\Registration\CheckUserController;
use Illuminate\Support\Facades\Route;


Route::post('/reg/user', [RegistrationController::class,'create']);
Route::get('/reg/user', [CheckUserController::class, 'check']);
