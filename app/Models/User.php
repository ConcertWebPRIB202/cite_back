<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $table='user';
    public $timestamps = false;
    protected $fillable=[
        'phone',
        'city',
        'gender_id',
        'document_id',
        'account_id',
    ];
}