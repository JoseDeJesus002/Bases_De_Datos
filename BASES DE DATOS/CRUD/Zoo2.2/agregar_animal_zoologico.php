<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>

	<div>
		<form action="insertar_animal_zoologico.php" method="POST">
			<h1>AGREGAR ANIMAL A UN ZOOLOGICO</h1>
			<label>Id de Zoologico</label><br>
			<input type="text" name="id_zoo"><br>
			<label>Id del animal</label><br>
			<input type="text" name="id_animal"><br>
			<label>Fecha de llegada</label><br>
			<input type="text" name="fecha_llegada"><br>

			<input type="submit" value="insertar">
			<a href="index.php">regresar</a>
		</form>
	</div>

</body>
</html>