<?php

use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return Inertia::render('Dashboard');
    })->name('dashboard');
});


use App\Http\Controllers\HomeController;  // Importa el controlador HomeController
Route::get('/', [HomeController::class, 'index']);  // Ruta para el método index() del controlador HomeController

//Este tipo de ruta es útil para aplicaciones de una sola página (SPA) como las que se construyen con Vue.js
Route::get('/{any}', function () {
    // Retorna la vista 'welcome' para cualquier ruta que coincida con el patrón
    return view('bienvenida');
})->where('any', '.*');
// ->where('any', '.*'): Define una restricción para el parámetro {any}
// '.*' es una expresión regular que coincide con cualquier cadena de caracteres
