<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>

	<div>
		<form action="insertar_zoologico.php" method="POST">
			<h1>AGREGAR ZOOLOGICO</h1>
			<label>Id de Zoologico</label><br>
			<input type="text" name="id_zoo"><br>
			<label>Nombre</label><br>
			<input type="text" name="nombre"><br>
			<label>Direccion</label><br>
			<input type="text" name="diireccion"><br>
			<label>Año de fundacion</label><br>
			<input type="text" name="año_fundacion"><br>
			<label>Metros</label><br>
			<input type="text" name="mts"><br>

			<input type="submit" value="insertar">
			<a href="index.php">regresar</a>
		</form>
	</div>

</body>
</html>