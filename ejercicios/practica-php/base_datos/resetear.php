<?php
//https://www.hostinger.es/tutoriales/conectar-php-mysql/
session_start();
$servername = "localhost";
$database = "nba2";
$username = "test";
$password = "test";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql ="DROP DATABASE `nba2`";

$resultado = $conn->query($sql);
if ($resultado) {
    $_SESSION['resetear'] = true;
}else{
    $_SESSION['resetear'] = false;
}
$sql ="CREATE DATABASE `nba2`";

$resultado = $conn->query($sql);
if ($resultado) {
    $_SESSION['resetear'] = true;
}else{
    $_SESSION['resetear'] = false;
}
echo "Base de datos reseteada";
mysqli_close($conn);