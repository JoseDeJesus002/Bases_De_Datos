<?php
include("conexion.php");
$con = conectar();

$id_ext=$_GET['id_ext'];
$sql="SELECT * FROM extincion WHERE id_ext='$id_ext'";
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
		<form action="update_extincion.php" method="POST">
			<h1>EDITAR EXTINCION</h1>
			<label>Id de extincion</label><br>
			<input type="text" name="id_ext" value="<?php echo $row["id_ext"]?>"><br>
			<label>color</label><br>
			<input type="text" name="color" value="<?php echo $row["descripcion"]?>"><br>
			<label>Descripcion</label><br>
			<input type="text" name="descripcion" value="<?php echo $row["color"]?>"><br>

			<input type="submit" value="Actualizar">
		</form>
	</div>

</body>
</html>