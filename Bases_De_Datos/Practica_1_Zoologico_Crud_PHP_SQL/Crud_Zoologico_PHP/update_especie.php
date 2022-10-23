<?php
include("conexion.php");
$con = conectar();

$ID_ESPECIE =$_POST['id_especie'];
$ID_EXTINCION =$_POST['id_ext'];
$FAMILIA =$_POST['familia'];
$NOM_COMUN =$_POST['n_comun'];
$P_ORTIGEN =$_POST['l_origen'];
$NOM_CIENTIFICO =$_POST['n_cientifico'];

if ($ID_ESPECIE!=null || $ID_EXTINCION!=null || $FAMILIA!=null || $NOM_COMUN!=null || $P_ORTIGEN!=null || $NOM_CIENTIFICO!=null) {
	$sql="UPDATE especie SET id_ext='$ID_EXTINCION', familia='$FAMILIA', n_comun='$NOM_COMUN', l_origen='$P_ORTIGEN', n_cientifico='$NOM_CIENTIFICO' WHERE id_especie='$ID_ESPECIE'";
	mysqli_query($con, $sql);
	if($user=1){
		header("location:index.php");
	}
}

?>