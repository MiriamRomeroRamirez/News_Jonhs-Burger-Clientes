<?php 
include("configuracion.php");
$conexion = new mysqli('localhost','root','123','clientes');
if (mysqli_connect_errno()){
    echo "No conectado", mysqli_connect_error();
    exit(); 
}//else
//echo 'Conectado';
?>