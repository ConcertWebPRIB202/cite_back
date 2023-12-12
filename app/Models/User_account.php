<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User_account extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    protected $table='user_account';
    public $timestamps = false;
    protected $fillable=[
        'login',
        'password',
        'email',
    ];
}