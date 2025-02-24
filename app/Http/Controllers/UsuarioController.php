<?php

#namespace App\Http\Controllers;

#use Illuminate\Http\Request;

#class UsuarioController extends Controller
#{
    /**
     * Display a listing of the resource.
     */
#    public function index()
#    {
        //
#    }

    /**
     * Store a newly created resource in storage.
     */
#    public function store(Request $request)
#    {
        //
#    }

    /**
     * Display the specified resource.
     */
#    public function show(string $id)
#    {
        //
#    }

    /**
     * Update the specified resource in storage.
     */
#    public function update(Request $request, string $id)
#    {
        //
#    }

    /**
     * Remove the specified resource from storage.
     */
#    public function destroy(string $id)
#    {
        //
#    }
#}

#namespace App\Http\Controllers;

#use Illuminate\Http\Request;  // Importamos Request para manejar datos de entrada
#use App\Models\User;   // Importamos el modelo User para interactuar con la base de datos
 
#class UsuarioController extends Controller
#{
     // Método para obtener todos los usuarios
#    public function index()
    #{
         // Retornamos todos los usuarios en formato JSON
     #   return response()->json(User::all());
    #}

    // Método para guardar un nuevo usuario
    #public function store(Request $request)
    #{
        // Validamos que el campo `nombre` sea obligatorio, tipo string y con un máximo de 255 caracteres
     #   $usuario = User::create($request->validate([
      #      'nombre' => 'required|string|max:255'
       # ]));


        // Retornamos un mensaje de éxito junto con el usuario creado
        #return response()->json(['message' => 'Usuario creado con éxito', 'usuario' => $usuario]);
    #}
#}
