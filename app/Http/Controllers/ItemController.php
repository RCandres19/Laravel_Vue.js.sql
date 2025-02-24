<?php

namespace App\Http\Controllers; // Definimos el namespace

use App\Models\Item;   // Importamos el modelo Item
use Illuminate\Http\Request;   // Importamos la clase Request

class ItemController extends Controller   // Definimos la clase ItemController
{
    // Método para obtener todos los elementos
    public function index()
    {
        return response()->json(Item::all());          //return Item::all();  // Devuelve todos los items de la base de datos
    }

    // Método para crear un nuevo item
    public function store(Request $request)
    {
        // Validamos los datos recibidos
        $request->validate([   // Validar los datos recibidos
            'name' => 'required|string|max:255',    // El campo 'name' es requerido y debe ser de tipo string con un máximo de 255 caracteres
            'lastname' => 'required|string|max:255',   // El campo 'lastname' es requerido y debe ser de tipo string con un máximo de 255 caracteres
            'email' => 'required|email|unique:items,email',    // El campo 'email' es requerido, debe ser de tipo email y debe ser único en la tabla 'items'
            'phone' => 'required|string|max:20'      // El campo 'phone' es requerido y debe ser de tipo string con un máximo de 20 caracteres
        ]);

        // Creamos un nuevo item
       // Crear un nuevo ítem usando los datos validados
            $item = new Item();    // Crear una nueva instancia de Item
            $item->name = $request->name;    // Asignar el valor del campo 'name' al ítem
            $item->lastname = $request->lastname;   // Asignar el valor del campo 'lastname' al ítem
            $item->email = $request->email;   // Asignar el valor del campo 'email' al ítem
            $item->phone = $request->phone;   // Asignar el valor del campo 'phone' al ítem
            $item->save();    // Guardar el ítem en la base de datos

            return response()->json([    // Retorna un mensaje de éxito con el ítem creado
                'message' => 'Usuario creado exitosamente',    // Mensaje de éxito
                'user_id' => $item->id,     // ID del ítem creado
                'nombre' => $item->name,   // Nombre del ítem creado
                'apellido' => $item->lastname,   // Apellido del ítem creado
                'email' => $item->email,    // Email del ítem creado
                'telefono' => $item->phone,   // Teléfono del ítem creado
                'data' => $item    // Datos del ítem creado
            ], 201); // Retorna una respuesta con el ítem creado y un código 201 (creado)
    }

    // Método para obtener un item por ID
    public function show($id)
    {
        return Item::find($id); // Retorna el item si lo encuentra, de lo contrario, null
    }

    // Método para actualizar un item
    // Método para actualizar un item
public function update(Request $request, $id)
{
    // Buscamos el item por su ID
    $item = Item::find($id);

    if (!$item) {  // Si no se encuentra el item
        return response()->json(['message' => 'Item not found'], 404);
    }

    // Validamos los datos
    $request->validate([
        'name' => 'required|string|max:255',
        'lastname' => 'required|string|max:255',
        'email' => 'required|email|unique:items,email,' . $id,
        'phone' => 'required|string|max:20'       
    ]);

    // Actualizamos los campos
    $item->name = $request->name;
    $item->lastname = $request->lastname;
    $item->email = $request->email;
    $item->phone = $request->phone;
    $item->save();  // Guardamos los cambios

    return response()->json([
        'message' => 'Item actualizado correctamente',
        'data' => $item
    ]);
}


    // Método para eliminar un item
    public function destroy($id)
    {
        $item = Item::find($id);

        // Si no existe, retornamos un error
        if (!$item) {
            return response()->json(['message' => 'Item not found'], 404); // Retorna un mensaje si no se encuentra el item
        }

        $item->delete();  // Eliminamos el item

        // Retornamos un mensaje de éxito
        return response()->json(['message' => 'Item eliminado correctamente']);  // Retorna una respuesta sin contenido
    }
}

