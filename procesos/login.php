<?php
/*
Para leer los datos que fueron enviados al formulario,
accedemos al arreglo superglobal llamado $_POST en PHP, y
para obtener un valor accedemos a $_POST["clave"] en donde
clave es el "name" que le dimos al input
 */
$animalesLocation = "Location: animales/animales.php";
$seguimientosLocation = "Location: seguimientos/seguimientos.php";
$page = $_SERVER["page"];

$usuario = $_POST["usuario"];
$password = $_POST["palabra_secreta"];

$conexion = mysqli_connect('localhost', 'root', '', 'blanco');

$sql = "SELECT usuario, password
       FROM usuarios 
       WHERE usuario='$usuario' and password='$password'";

$result = mysqli_query($conexion,$sql);

$posibleUsuarioRegistrado = mysqli_fetch_row($result);

if ($usuario === $posibleUsuarioRegistrado[0] && $password === $posibleUsuarioRegistrado[1]) {
  session_start();
  $_SESSION["correo"] = $usuario;
  # Redirigir a secreta
  $url = $_SERVER['HTTP_REFERER'];
  $parts = parse_url($url);
  parse_str($parts['query'], $query);
  if ($query['page'] === 'animales') {
    header($animalesLocation);
  } else {
    header($seguimientosLocation);
  }
  # Y salir
  exit;
} else {
  # Si no, entonces indicarlo
  header("Location: invalid-user.html");
}
