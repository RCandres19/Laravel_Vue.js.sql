<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()   // Método para crear la tabla
{
    Schema::create('items', function (Blueprint $table) {  // Creamos la tabla items
        $table->id();  // Crea un campo id autoincrementable
        $table->string('name');  // Un campo para el nombre
        $table->text('lastname');  // Un campo para el apellido
        $table->string('email')->unique();  // Un campo para el email, único
        $table->string('phone');  // Un campo para el teléfono
        $table->timestamps();  // Crea campos created_at y updated_at
    });
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('items');
    }
};
