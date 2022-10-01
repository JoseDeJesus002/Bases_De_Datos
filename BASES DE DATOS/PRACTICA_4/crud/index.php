<?php
include ("conexion.php");
$con=conectar();
$sql = "select *from disfraz";
$query=mysqli_query($con,$sql);
?>

<!DOCTYPE html>
<html>
<head>
	<title>Crud</title>
</head>
<body bgcolor="#04b3b0">
	<div>
		<a href="agregar.php">Nuevo Registro</a>
		<table border="black">
			<thead>
				<tr>
					<th>Modelo de disfraz</th>
					<th>Nombre</th>
					<th>Talla</th>
					<th>Metodos</th>
				</tr>

			</thead>
		<tbody>
			<?php
				while($row=mysqli_fetch_array($query))
				{

				
			?>
			<tr>
				<td align="center"><?php echo $row['MODELO_DISFRAZ']?></td>
				<td><?php echo $row['NOMBRE']?></td>
				<td><?php echo $row['TALLA']?></td>
				<td><a href="">Editar</a></td>
				<td><a href="">Eliminar</a></td>
			</tr>

			<?php
				}
			?>
		</tbody>
	</div>
</body>
</html>