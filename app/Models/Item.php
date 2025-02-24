<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    use HasFactory;  // Usamos el trait HasFactory

    protected $fillable = ['name', 'lastname', 'email', 'phone']; // Definimos los campos que se pueden llenar
}
