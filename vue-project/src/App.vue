
<template>
  <div id="app">   <!-- Contenedor principal -->
    <Formulario /> <!-- Aquí se renderiza el componente Formulario -->
  </div>
</template>

<script>
import Formulario from './components/FormularioUsers.vue'; // Asegúrate de importar el componente

export default {    // Exporta el componente
  name: 'App',         // Nombre del componente
  components: {         // Componentes del componente
    Formulario // Registra el componente
  }
}
</script>

<style>

#app {
  font-family:'Times New Roman', Times, serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #1470ccee;
  margin-top: 60px;
}
</style>





