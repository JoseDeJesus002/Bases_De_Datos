<?php
include('conexion.php');
$con = conectar();
 	
$ID_ZOOLOGICO =$_POST['id_zoo'];
$ID_ANIMAL =$_POST['id_animal'];
$FECHA_DE_LLEGADA=$_POST['fecha_llegada'];

if ($ID_ZOOLOGICO!=null || $ID_ANIMAL!=null || $FECHA_DE_LLEGADA!=null) {
	$sql="UPDATE animal_zoo SET id_zoo='$ID_ZOOLOGICO', id_animal='$ID_ANIMAL', fecha_llegada='$FECHA_DE_LLEGADA'";
	mysqli_query($con, $sql);
	if($user=1){
		header("location:index.php");
	}
}
?>