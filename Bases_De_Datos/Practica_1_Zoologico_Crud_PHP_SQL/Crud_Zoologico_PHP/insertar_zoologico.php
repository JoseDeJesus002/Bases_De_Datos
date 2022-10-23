<?php
include('conexion.php');
$con = conectar();
 	
$ID_ZOOLOGICO =$_POST['id_zoo'];
$NOMBRE =$_POST['nombre'];
$DIRECCION =$_POST['diireccion'];
$AÑO_DE_FUNDACION =$_POST['año_fundacion'];
$METROS =$_POST['mts'];

if ($ID_ZOOLOGICO!=null || $NOMBRE!=null || $DIRECCION!=null || $AÑO_DE_FUNDACION!=null || $METROS!=null) {
	$sql="INSERT INTO zoologico(id_zoo, nombre, diireccion, año_fundacion, mts)VALUES('$ID_ZOOLOGICO', '$NOMBRE', '$DIRECCION', '$AÑO_DE_FUNDACION', '$METROS')";
	mysqli_query($con, $sql);
	if($user=1){
		header("location:index.php");
	}
}

?>