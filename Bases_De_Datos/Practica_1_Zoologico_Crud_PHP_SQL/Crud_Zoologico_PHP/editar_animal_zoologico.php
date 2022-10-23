<?php
include("conexion.php");
$con = conectar();

$id_zoo=$_GET['id_zoo'];
$sql="SELECT * FROM animal_zoo WHERE id_zoo='$id_zoo'";
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
		<form action="update_animal_zoologico.php" method="POST">
			<h1>CAMBIAR ANIMAL DE UN ZOOLOGICO</h1>
			<label>Id de Zoologico</label><br>
			<input type="text" name="id_zoo" value="<?php echo $row["id_zoo"]?>"><br>
			<label>Id del animal</label><br>
			<input type="text" name="id_animal" value="<?php echo $row["id_animal"]?>"><br>
			<label>Fecha de llegada</label><br>
			<input type="text" name="fecha_llegada" value="<?php echo $row["fecha_llegada"]?>"><br>

			<input type="submit" value="Actualizar">
		</form>
	</div>

</body>
</html>