<?php
include("conexion.php");
$con=conectar();

$modelo_disfraz=$_POST['MODELO_DISFRAZ'];
$nombre=$_POST['NOMBRE'];
$talla=$_POST['TALLA'];

if($modelo_disfraz!=null||$nombre!=null||$talla!=null)
{
	$sql="insert into disfraz(MODELO_DISFRAZ,NOMBRE,TALLA)values('".$modelo_disfraz."', '".$nombre."','".$talla."')";
	mysqli_query($con,$sql);
	if($user=1)
	{
		header("location:index.php");
	}
}
?>