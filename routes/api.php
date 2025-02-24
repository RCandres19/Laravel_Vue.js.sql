<?php
//use Illuminate\Http\Request;
//use Illuminate\Support\Facades\Route;

//Route::get('/user', function (Request $request) {
  // return $request->user();
//})->middleware('auth:sanctum');

#use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;                  // Importamos la clase Route
#use App\Http\Controllers\UsuarioController;          // Importamos el controlador

#Route::get('/usuarios', [UsuarioController::class, 'index']);           // Definimos la ruta para obtener todos los usuarios (Método GET)
#Route::post('/usuarios', [UsuarioController::class, 'store']);         // Definimos la ruta para crear un nuevo usuario (Método POST)



use App\Http\Controllers\ItemController;  // Importamos el controlador ItemController

Route::post('/items', [ItemController::class, 'store']);   // Definimos la ruta para crear un nuevo item (Método POST)

Route::get('items', [ItemController::class, 'index']);        // Ruta para obtener todos los items
Route::post('items', [ItemController::class, 'store']);       // Ruta para crear un nuevo item
Route::get('items/{id}', [ItemController::class, 'show']);     // Ruta para obtener un item por ID
Route::put('items/{id}', [ItemController::class, 'update']);     // Ruta para actualizar un item
Route::delete('items/{id}', [ItemController::class, 'destroy']);    // Ruta para eliminar un item

Route::middleware('api')->get('/items', [ItemController::class, 'index']);   # Definimos la ruta para obtener todos los items
Route::middleware('api')->post('/items', [ItemController::class, 'store']);   # Definimos la ruta para crear un nuevo item
Route:: middleware ('api') -> get ('/items / {id}', [ItemController :: class, 'show']);   # Definimos la ruta para obtener un item por ID
Route:: middleware ('api') -> put ('/items / {id}', [ItemController :: class, 'update']);   # Definimos la ruta para actualizar un item
Route:: middleware ('api') -> delete ('/items / {id}', [ItemController :: class, 'destroy']);    # Definimos la ruta para eliminar un item