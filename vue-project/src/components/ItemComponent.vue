<!-- <template>
    <div>
      <h1>Items</h1>
      <ul>
        <li v-for="item in items" :key="item.id">{{ item.name }} - {{ item.description }}</li>
      </ul>
  
      <form @submit.prevent="createItem"> // Evitar que el formulario se envíe por defecto
        <input v-model="newItem.name" type="text" placeholder="Name">  // Vincular el valor del input con el modelo
        <input v-model="newItem.description" type="text" placeholder="Description">  // Vincular el valor del input con el modelo
        <button type="submit">Create</button>  // Botón para enviar el formulario
      </form>
    </div>
  </template> -->
  
  <!--<script>
  export default {  // Exportar el componente
    data() {   // Datos del componente
      return {  // Retornar los datos
        items: [],  // Array para almacenar los items
        newItem: {   // Objeto para almacenar los datos del nuevo item
          name: '',   // Propiedades del nuevo item
          description: ''   // Propiedades del nuevo item
        }
      };
    },
    mounted() {
      this.getItems();  // Obtener los items cuando el componente se monte
    },
    methods: { // Métodos del componente
      getItems() {
        // Hacer una petición GET a la API
        fetch('http://localhost/api/items')
          .then(response => response.json())
          .then(data => {
            this.items = data;  // Almacenamos los datos en el array de items
          });
      },
      createItem() {
        // Hacer una petición POST para crear un nuevo item
        fetch('http://localhost/api/items', {  // URL de la API
          method: 'POST',  // Método de la petición
          headers: {  // Cabeceras de la petición
            'Content-Type': 'application/json'  // Tipo de contenido
          },
          body: JSON.stringify(this.newItem)  // Enviamos los datos del formulario
        })
          .then(response => response.json())  // Convertir la respuesta a JSON
          .then(data => {   // Procesar los datos
            this.items.push(data);  // Agregamos el item creado a la lista
            this.newItem.name = '';  // Limpiamos el formulario
            this.newItem.description = '';  // Limpiamos el formulario
          });
      }
    }
  };
  </script> -->
  