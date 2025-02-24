<template>
    <div class="form-container">
      <h1>Login</h1>
      
      <!-- Formulario de registro de usuarios -->
      <form @submit.prevent="submitForm" class="form">
          <!-- Evitar recargar la página -->
          <div class="input-group">
              <!-- Grupo de campos -->
              <!--<label for="name">Name:</label>-->
              <input type="text" id="name" v-model="form.name" required placeholder="Enter your name">
          </div>

          <div class="input-group">
              <!-- Grupo de campos -->
              <!--<label for="lastname">LastName:</label>-->
              <input type="text" id="lastname" v-model="form.lastname" required placeholder="Enter your last name">
          </div>

          <div class="input-group">
              <!-- Grupo de campos -->
              <!--<label for="email">Email:</label>-->
              <input type="email" id="email" v-model="form.email" required placeholder="Enter your email">
          </div>

          <div class="input-group">
              <!-- Grupo de campos -->
              <!--<label for="phone">Phone:</label>-->
              <input type="tel" id="phone" v-model="form.phone" required placeholder="Enter your phone">
          </div>

          <button type="submit" class="submit-btn">Registrarse</button>
      </form>

      <!-- Mensaje de éxito -->
      <div v-if="successMessage" class="success-message">
          <!-- Mostrar si hay mensaje de éxito -->
          <h2>{{ successMessage }}</h2>
          <!-- Mostrar mensaje de éxito -->
      </div>
  </div>
</template>

<script>
import axios from 'axios'; // Importar axios
import Swal from 'sweetalert2'; // Importar SweetAlert2


export default {
  // Exportar componente
  data() {
      // Datos del componente
      return {
          // Retornar datos
          form: {
              // Formulario
              name: '', // Nombre
              lastname: '', // Apellido
              email: '', // Correo
              phone: '' // Teléfono
          },
          successMessage: '' // Mensaje de éxito
      };
  },


  methods: {
      // Métodos del componente
      async submitForm() {
          // Método para enviar el formulario
          try {
              // Intentar enviar el formulario
              const response = await axios.post('http://127.0.0.1:8000/api/items', this.form);
              // Enviar formulario a la API
              // const response = await axios.post('http://192.168.248.138:8000/api/items', this.form); // para conectarse con la ip de la maquina virtual

              // Obtener ID del usuario registrado
              const userId = response.data.data.id;
              const userName = this.form.name;

              // Mostrar notificación con SweetAlert2
              Swal.fire({
                  title: `¡Bienvenido, ${userName}!`,
                  text: `Usuario ${userId} ha ingresado exitosamente a nuestra página CultivaSena`,
                  icon: 'success',
                  timer: 5000,
                  showConfirmButton: false
              });

              // Mensaje de éxito
              //this.successMessage = `Felicidades, usuario ${response.data.data.id} ingresado correctamente`;

              // Limpiar el formulario
              this.form = { name: '', lastname: '', email: '', phone: '' };
          } catch (error) {
              console.error('Error al enviar el formulario:', error);
              
      }
    },     
  }
};
</script>

<style scoped>

.form-container {
  max-width: 400px;
  margin: auto;
  padding: 20px;
  background: rgba(248, 241, 241, 0.856); /* Efecto transparente */
  backdrop-filter: blur(10px); /* Difuminado */
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(167, 167, 167, 0.781);
  text-align: center;
}

.input-group {
  margin-bottom: 18px;
  text-align: center;
}

label {
  display: block;
  font-weight: bold;
}

input {
  width: 95%;
  padding: 10px;
  border: 2px solid #f0ebeb;
  border-radius: 15.7px;
  background: rgba(255, 255, 255, 0.87); /* Transparente */
}

.submit-btn {
  width: 30%;
  padding: 11px;
  background: #008cff;
  color: white;
  border: none;
  border-radius: 15.7px;
  cursor: pointer;
}

.submit-btn:hover {
  background: #001aff;
}

.success-message {
  margin-top: 12px;
  color: #34b619;
  font-weight: bold;
}
</style>