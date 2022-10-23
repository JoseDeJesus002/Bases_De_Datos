<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>

	<div>
		<form action="insertar_extincion.php" method="POST">
			<h1>AGREGAR EXTINCION</h1>
			<label>Id de extincion</label><br>
			<input type="text" name="id_ext"><br>
			<label>color</label><br>
			<input type="text" name="color"><br>
			<label>Descripcion</label><br>
			<input type="text" name="descripcion"><br>

			<input type="submit" value="insertar">
			<a href="index.php">regresar</a>
		</form>
	</div>

</body>
</html>