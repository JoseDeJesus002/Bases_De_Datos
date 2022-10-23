<?php
include('conexion.php');
$con = conectar();
 	
$ID_EXTINCION =$_POST['id_ext'];
$COLOR =$_POST['color'];
$DESCRIPCION =$_POST['descripcion'];


if ($ID_EXTINCION!=null || $DESCRIPCION!=null || $COLOR!=null) {
	$sql="INSERT INTO extincion(id_ext, descripcion, color)VALUES('$ID_EXTINCION', '$DESCRIPCION', '$COLOR' )";
	mysqli_query($con, $sql);
	if($user=1){
		header("location:index.php");
	}
}

?>