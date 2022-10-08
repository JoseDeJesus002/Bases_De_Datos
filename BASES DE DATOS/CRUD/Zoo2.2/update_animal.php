<?php
include('conexion.php');
$con = conectar();
 	
$ID_DE_ANIMAL =$_POST['id_animal'];
$ID_DE_ESPECIE =$_POST['id_especie'];
$NOMBRE =$_POST['nombre'];
$FECHA_DE_NACIMIENTO =$_POST['fecha'];
$SEXO = $_POST['sexo'];



if ($ID_DE_ANIMAL!=null || $ID_DE_ESPECIE!=null || $NOMBRE!=null || $FECHA_DE_NACIMIENTO!=null || $SEXO!=null) {
	$sql="UPDATE animal SET nombre='$NOMBRE', fecha='$FECHA_DE_NACIMIENTO', sexo='$SEXO' WHERE id_animal='$ID_DE_ANIMAL'";
	mysqli_query($con, $sql);
	if($user=1){
		header("location:index.php");
	}
}

?>