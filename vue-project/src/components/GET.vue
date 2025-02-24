<script setup>
import { ref, onMounted } from 'vue';  // Importamos `ref` para manejar estados reactivos y `onMounted` para ejecutar código al cargar el componente

// Variable reactiva donde se guardarán los usuarios obtenidos de la API
const usuarios = ref([]);

// Variable para almacenar posibles errores en la petición
const error = ref(null);

// Función asíncrona para obtener los usuarios de la API de Laravel
const obtenerUsuarios = async () => {
  try {
    // Realizamos la petición `GET` a la API
    const response = await fetch('http://localhost/8000/api/usuarios');

    // Si la petición no fue exitosa, lanzamos un error
    if (!response.ok) {
      throw new Error(`Error HTTP! Estado: ${response.status}`);
    }

     // Convertimos la respuesta a JSON y la almacenamos en la variable `usuarios`
    usuarios.value = await response.json();
  } catch (err) {
    // Si hay un error, lo guardamos en la variable `error`
    error.value = err.message;
  }
  console.log("Error al obtener usuarios");
};

// Cuando el componente se monte, llamamos a `obtenerUsuarios`
onMounted(() => {
  obtenerUsuarios();
});
</script>

<template>
  <div>
    <h2>Lista de Usuarios</h2>
    <!-- Si hay usuarios, los mostramos en una lista -->
    <ul v-if="usuarios.length">
      <li v-for="usuario in usuarios" :key="usuario.id">
        {{ usuario.nombre }}  <!-- Mostramos el nombre del usuario -->
      </li>
    </ul>
    <!-- Si no hay usuarios, mostramos un mensaje de carga -->
    <p v-else>Cargando...</p>
    <!-- Si hay un error, lo mostramos en la pantalla -->
    <p v-if="error" class="error">{{ error }}</p>
  </div>
</template>
