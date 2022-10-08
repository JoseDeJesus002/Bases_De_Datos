<?php
include('conexion.php');
$con = conectar();
 	
$ID_DE_ANIMAL =$_POST['id_animal'];
$ID_DE_ESPECIE =$_POST['id_especie'];
$NOMBRE =$_POST['nombre'];
$FECHA_DE_NACIMIENTO =$_POST['fecha'];
$SEXO = $_POST['sexo'];



if ($ID_DE_ANIMAL!=null || $ID_DE_ESPECIE!=null || $NOMBRE!=null || $FECHA_DE_NACIMIENTO!=null || $SEXO!=null) {
	$sql="INSERT INTO animal(id_animal, id_especie, nombre, fecha, sexo)VALUES('$ID_DE_ANIMAL', '$ID_DE_ESPECIE', '$NOMBRE', '$FECHA_DE_NACIMIENTO', '$SEXO')";
	mysqli_query($con, $sql);
	if($user=1){
		header("location:index.php");
	}
}

?>