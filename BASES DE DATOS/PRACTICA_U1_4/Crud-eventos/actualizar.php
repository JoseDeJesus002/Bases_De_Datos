<?php
	include("conexion.php");
	$con = conectar();
	
	$id=$_GET['id'];

	$sql = "SELECT * FROM disfraz WHERE MODELO_DISFRAZ = '$id'";
	$query = mysqli_query($con,$sql);

	$row = mysqli_fetch_array($query);
?>

<!DOCTYPE html>
<html>
<head>
	<title>CRUD ACTUALIZAR</title>
</head>
<body>
		<div>
			<form action="update.php" method="POST">
				<label>MODELO DE DISFRAZ</label><br>

				<input type="text" name="MODELO_DISFRAZ" value="<?php echo $row['MODELO_DISFRAZ']?>"><br><br>

				<label>NOMBRE</label><br>
				<input type="text" name="NOMBRE" value="<?php echo $row['NOMBRE']?>"><br><br>
				
				<label>TALLA</label><br>
				<input type="text" name="TALLA" value="<?php echo $row['TALLA']?>"><br><br>

				<input type="submit" name="" value="Actualizar">

				<a href="index.php">REGRESAR</a>
			</form>
		</div>
</body>
</html>
