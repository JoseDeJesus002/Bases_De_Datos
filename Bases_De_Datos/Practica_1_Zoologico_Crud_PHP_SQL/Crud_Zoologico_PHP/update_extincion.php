<?php
include("conexion.php");
$con = conectar();

$ID_EXTINCION =$_POST['id_ext'];
$COLOR =$_POST['color'];
$DESCRIPCION =$_POST['descripcion'];


if ($ID_EXTINCION!=null || $DESCRIPCION!=null || $COLOR!=null) {
	$sql="UPDATE extincion SET color='$COLOR', descripcion='$DESCRIPCION' WHERE id_ext='$ID_EXTINCION'";
	mysqli_query($con, $sql);
	if($user=1){
		header("location:index.php");
	}
}

?>