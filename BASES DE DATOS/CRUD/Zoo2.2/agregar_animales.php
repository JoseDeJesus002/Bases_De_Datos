<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>

	<div>
		<form action="insertar_animal.php" method="POST">
			<h1>AGREGAR ANIMALES</h1>
			<label>Id de animal</label><br>
			<input type="text" name="id_animal"><br>
			<label>Id de especie</label><br>
			<input type="text" name="id_especie"><br>
			<label>Nombre</label><br>
			<input type="text" name="nombre"><br>
			<label>Fecha de nacimiento</label><br>
			<input type="text" name="fecha"><br>
			<label>sexo</label><br>
			<input type="text" name="sexo"><br>

			<input type="submit" value="insertar">
			<a href="index.php">regresar</a>
		</form>
	</div>

</body>
</html>