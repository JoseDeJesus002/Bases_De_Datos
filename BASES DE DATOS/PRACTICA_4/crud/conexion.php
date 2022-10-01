<?php
function conectar()
{
	$host="localhost";
	$usuario="root";
	$pass="";
	$bd="eventos";
	$conexion=mysqli_connect($host,$usuario,$pass);
	mysqli_select_db($conexion,$bd);
	return $conexion;
}
?>