<?php
include("conexion.php");
$con = conectar();

$id_especie=$_GET['id_especie'];
$sql="SELECT * FROM especie WHERE id_especie='$id_especie'";
$query = mysqli_query($con, $sql);
$row=mysqli_fetch_array($query);
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>

	<div>
		<form action="update_especie.php" method="POST">
			<h1>EDITAR ESPECIE</h1>
			<label>Id de la especie</label><br>
			<input type="text" name="id_especie" value="<?php echo $row["id_especie"]?>"><br>
			<label>Id de extincion</label><br>
			<input type="text" name="id_ext" value="<?php echo $row["id_ext"]?>"><br>
			<label>Familia</label><br>
			<input type="text" name="familia" value="<?php echo $row["familia"]?>"><br>
			<label>Nombre comun</label><br>
			<input type="text" name="n_comun" value="<?php echo $row["n_comun"]?>"><br>
			<label>Pais de origen</label><br>
			<input type="text" name="l_origen" value="<?php echo $row["l_origen"]?>"><br>
			<label>Nombre cientifico</label><br>
			<input type="text" name="n_cientifico" value="<?php echo $row["n_cientifico"]?>"><br>

			<input type="submit" value="Actualizar">
		</form>
	</div>

</body>
</html>