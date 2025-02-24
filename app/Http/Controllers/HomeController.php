<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\View;

class HomeController extends Controller
{
    public function index()
    {
        return view('bienvenida'); // Asegúrate de que 'bienvenida' existe en resources/views
    }
}
// En este controlador, el método index() simplemente devuelve la vista 'bienvenida'.
