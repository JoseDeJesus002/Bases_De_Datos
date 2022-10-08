<?php
include("conexion.php");
$con = conectar();

$id_animal=$_GET['id_animal'];
$sql="SELECT * FROM animal WHERE id_animal='$id_animal'";
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
		<form action="update_animal.php" method="POST">
			<h1>EDITAR ANIMALES</h1>
			<label>Id de animal</label><br>
			<input type="text" name="id_animal" value="<?php echo $row["id_animal"]?>"><br>
			<label>Id de especie</label><br>
			<input type="text" name="id_especie" value="<?php echo $row["id_especie"]?>"><br>
			<label>Nombre</label><br>
			<input type="text" name="nombre" value="<?php echo $row["nombre"]?>"><br>
			<label>Fecha de nacimiento</label><br>
			<input type="text" name="fecha" value="<?php echo $row["fecha"]?>"><br>
			<label>sexo</label><br>
			<input type="text" name="sexo" value="<?php echo $row["sexo"]?>"><br>

			<input type="submit" value="Actualizar">
		</form>
	</div>

</body>
</html>