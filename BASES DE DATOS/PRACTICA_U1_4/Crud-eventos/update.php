<?php
include("conexion.php");
$con = conectar();

$modelo_disfraz =$_POST['MODELO_DISFRAZ'];
$nombre = $_POST['NOMBRE'];
$talla = $_POST['TALLA'];

if ($modelo_disfraz!=null || $nombre!=null || $talla!=null) 
{
	$sql="UPDATE disfraz SET MODELO_DISFRAZ='$modelo_disfraz',NOMBRE='$nombre',TALLA='$talla' WHERE MODELO_DISFRAZ ='$modelo_disfraz'";
	mysqli_query($con, $sql);
	if($user=1){
		header("location:index.php");
	}
}

?>