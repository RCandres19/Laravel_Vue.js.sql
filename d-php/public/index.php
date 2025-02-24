<?php
require '../includes/db.php'; // Se incluye el archivo de conexión a la base de datos

if ($pdo) {
    echo "<h1 style='color:green;'>Conexión exitosa a la base de datos</h1>";
} else {
    echo "<h1 style='color:red;'> Error en la conexión</h1>";
}
?>