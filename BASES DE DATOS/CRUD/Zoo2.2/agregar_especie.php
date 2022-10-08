<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>

	<div>
		<form action="insertar_especie.php" method="POST">
			<h1>AGREGAR ESPECIE</h1>
			<label>Id de la especie</label><br>
			<input type="text" name="id_especie"><br>
			<label>Id de extincion</label><br>
			<input type="text" name="id_ext"><br>
			<label>Familia</label><br>
			<input type="text" name="familia"><br>
			<label>Nombre comun</label><br>
			<input type="text" name="n_comun"><br>
			<label>Pais de origen</label><br>
			<input type="text" name="l_origen"><br>
			<label>Nombre cientifico</label><br>
			<input type="text" name="n_cientifico"><br>

			<input type="submit" value="insertar">
			<a href="index.php">regresar</a>
		</form>
	</div>

</body>
</html>