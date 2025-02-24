import { createApp } from 'vue';       // Importing createApp function
import ItemComponent from './components/ItemComponent.vue';         // Importing ItemComponent

const app = createApp({});        // Creating an app instance
app.component('item-component', ItemComponent);    // Registering ItemComponent globally
app.mount('#app');      // Mounting the app instance to the div with id app
