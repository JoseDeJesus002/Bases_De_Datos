<?php
include("conexion.php");
$con = conectar();

$ID_ZOOLOGICO =$_POST['id_zoo'];
$NOMBRE =$_POST['nombre'];
$DIRECCION =$_POST['diireccion'];
$AÑO_DE_FUNDACION =$_POST['año_fundacion'];
$METROS =$_POST['mts'];

if ($ID_ZOOLOGICO!=null || $NOMBRE!=null || $DIRECCION!=null || $AÑO_DE_FUNDACION!=null || $METROS!=null) {
	$sql="UPDATE zoologico SET nombre='$NOMBRE', diireccion='$DIRECCION', año_fundacion='$AÑO_DE_FUNDACION', mts='$METROS' WHERE id_zoo='$ID_ZOOLOGICO'";
	mysqli_query($con, $sql);
	if($user=1){
		header("location:index.php");
	}
}


?>