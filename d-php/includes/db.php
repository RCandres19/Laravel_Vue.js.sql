<?php

// Configuración de la conexión a la base de datos
$host = 'localhost'; // Servidor de la base de datos
$user = 'root';    // Usuario de la base de datos
$password = 'password'; // Contraseña de la base de datos
$dbname = 'CultivaSena'; // Nombre de la base de datos

// intenta la conexion 
try {
    // Crear una nueva conexión con PDO
   $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
    // Configurar PDO para que muestre errores en caso de problemas
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // Mensaje de éxito (solo para pruebas, luego se puede quitar)
    echo "Conexión exitosa";
  } catch (PDOException $e) {
    // Si hay un error, se muestra el mensaje
  die("Error en la conexión: " . $e->getMessage()); // Muestra el error exacto
}
?>