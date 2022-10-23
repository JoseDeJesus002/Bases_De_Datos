<?php
include("conexion.php");
$con = conectar();

$id_zoo=$_GET['id_zoo'];
$sql="SELECT * FROM zoologico WHERE id_zoo='$id_zoo'";
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
		<form action="update_zoologico.php" method="POST">
			<h1>EDITAR ZOOLOGICO</h1>
			<label>Id de Zoologico</label><br>
			<input type="text" name="id_zoo" value="<?php echo $row["id_zoo"]?>"><br>
			<label>Nombre</label><br>
			<input type="text" name="nombre" value="<?php echo $row['nombre']?>"><br>
			<label>Direccion</label><br>
			<input type="text" name="diireccion" value="<?php echo $row['diireccion']?>"><br>
			<label>Año de fundacion</label><br>
			<input type="text" name="año_fundacion" value="<?php echo $row['año_fundacion']?>"><br>
			<label>Metros</label><br>
			<input type="text" name="mts" value="<?php echo $row['mts']?>"><br>

			<input type="submit" value="Actualizar">
		</form>
	</div>

</body>
</html>