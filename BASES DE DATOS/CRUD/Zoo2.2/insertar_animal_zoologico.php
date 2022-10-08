<?php
include('conexion.php');
$con = conectar();
 	
$ID_ZOOLOGICO =$_POST['id_zoo'];
$ID_ANIMAL =$_POST['id_animal'];
$FECHA_DE_LLEGADA=$_POST['fecha_llegada'];

if ($ID_ZOOLOGICO!=null || $ID_ANIMAL!=null || $FECHA_DE_LLEGADA!=null) {
	$sql="INSERT INTO animal_zoo(id_zoo, id_animal, fecha_llegada)VALUES('$ID_ZOOLOGICO', '$ID_ANIMAL', '$FECHA_DE_LLEGADA')";
	mysqli_query($con, $sql);
	if($user=1){
		header("location:index.php");
	}
}
?>