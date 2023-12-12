<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Document_storage extends Model
{
    protected $table='documents_storage';
    public $timestamps = false;
    protected $fillable=[
        'doc_path',
    ];
}