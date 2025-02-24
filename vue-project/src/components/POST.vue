<script setup>
import { ref } from 'vue';   // Importamos `ref` para manejar variables reactivas

// Variable reactiva para almacenar el nombre del nuevo usuario
const nombre = ref('');

// Variable para mostrar mensajes de éxito o error
const mensaje = ref('');

// Función asíncrona para enviar el usuario a la API
const crearUsuario = async () => {
  try {
    // Enviamos una petición `POST` a la API con el nombre del usuario
    const response = await fetch('http://localhost/api/usuarios', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },  // Indicamos que estamos enviando JSON
      body: JSON.stringify({ nombre: nombre.value })   // Convertimos el nombre a JSON y lo enviamos en el cuerpo
    });
// Convertimos la respuesta a JSON y mostramos el mensaje de la API
    const data = await response.json();

    // Guardamos el mensaje de éxito en la variable `mensaje`
    mensaje.value = data.message || 'Usuario creado con éxito';
  } catch (err) {
    // Si hay un error, lo mostramos en la variable `mensaje`
    mensaje.value = 'Error al crear usuario';
  }
};
</script>

<template>
  <div>
    <!-- Campo de entrada para el nombre del usuario -->
    <input v-model="nombre" placeholder="Nombre del usuario" />

     <!-- Botón para enviar la petición -->
    <button @click="crearUsuario">Crear Usuario</button>

    <!-- Mensaje de éxito o error -->
    <p>{{ mensaje }}</p>
  </div>
</template>
