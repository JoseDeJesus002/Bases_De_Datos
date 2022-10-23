<?php
include('conexion.php');
$con = conectar();

$ID_ESPECIE =$_POST['id_especie'];
$ID_EXTINCION =$_POST['id_ext'];
$FAMILIA =$_POST['familia'];
$NOM_COMUN =$_POST['n_comun'];
$P_ORTIGEN =$_POST['l_origen'];
$NOM_CIENTIFICO =$_POST['n_cientifico'];

if ($ID_ESPECIE!=null || $ID_EXTINCION!=null || $FAMILIA!=null || $NOM_COMUN!=null || $P_ORTIGEN!=null || $NOM_CIENTIFICO!=null) {
	$sql="INSERT INTO especie(id_especie, id_ext, familia, n_comun, l_origen, n_cientifico)VALUES('$ID_ESPECIE', '$ID_EXTINCION', '$FAMILIA', '$NOM_COMUN', '$P_ORTIGEN', '$NOM_CIENTIFICO')";
	mysqli_query($con, $sql);
	if($user=1){
		header("location:index.php");
	}
}

?>