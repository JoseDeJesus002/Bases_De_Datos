<?php

include('conexion.php');


$con = conectar();
$sql_zoologico = "SELECT * FROM zoologico";
$query_zoologico = mysqli_query($con, $sql_zoologico);
$sql_animal_zoo = "SELECT * FROM animal_zoo";
$query_animal_zoo = mysqli_query($con, $sql_animal_zoo);
$sql_animal = "SELECT * FROM animal";
$query_animal = mysqli_query($con, $sql_animal);
$sql_especie = "SELECT * FROM especie";
$query_especie = mysqli_query($con, $sql_especie);
$sql_extincion = "SELECT * FROM extincion";
$query_extincion = mysqli_query($con, $sql_extincion);

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
		<table border="black">
			<thead>
				<tr>
					<th colspan="7"><h3>ZOOLOGICOS</h3></th>
				</tr>
				<tr>
					<th>ID_ZOOLOGICO</th>
					<th>NOMBRE</th>
					<th>DIRECCION</th>
					<th>AÑO DE FUNDACION</th>
					<th>METROS m<sup>2</sup></th>
					<th colspan="2">METODOS</th>
				</tr>
			</thead>
			<?php
			while ($row=mysqli_fetch_array($query_zoologico)) {
			?>
			<tbody>

				<tr>
					<th><?php echo $row['id_zoo']?></th>
					<th><?php echo $row['nombre']?></th>
					<th><?php echo $row['diireccion']?></th>
					<th><?php echo $row['año_fundacion']?></th>
					<th><?php echo $row['mts']?></th>

					<th><a href="editar_zoologicos.php?id_zoo=<?php echo $row['id_zoo']?>">Editar</a></th>
					<td><a href="delete_zoologico.php?id=<?php echo $row['id_zoo'] ?>">Eliminar</a></td>
				</tr>
				<?php
			}
			?>
			<tr>
				<th colspan="7" align="right"><button><a href="agregar_zoologico.php">NUEVO REGISTRO</a></button></th>
			</tr>
			</tbody>
		</table>
	</div>
		<br><br>
	<div>
		<table border="black">
			<thead>
				<tr>
					<th colspan="5"><h3>EXTINCION</h3></th>
				</tr>
				<tr>
					<th>ID_EXTINCION</th>
					<th>COLOR</th>
					<th>DESCRIPCION</th>
					<th colspan="2">METODOS</th>
				</tr>
			</thead>
			<?php
			while($row=mysqli_fetch_array($query_extincion)){
			?>
			<tbody>
				<tr>
					<th><?php echo $row["id_ext"]?></th>
					<th><?php echo $row["color"]?></th>
					<th><?php echo $row["descripcion"]?></th>

					<th><a href="editar_extincion.php?id_ext=<?php echo $row["id_ext"]?>">Editar</a></th>
					<td><a href="delete_extincion.php?id=<?php echo $row['id_ext'] ?>">Eliminar</a></td>
				</tr>
			<?php
			}
			?>
			<tr>
				<th colspan="5" align="right"><button><a href="agregar_extincion.php">NUEVO REGISTRO</a></button></th>
			</tr>
			</tbody>
		</table>
	</div>
	<br><br>
	<div>
		<table border="black">
			<thead>
				<tr>
					<th colspan="8"><h3>ESPECIE</h3></th>
				</tr>
				<tr>
					<th>ID_ESPECIE</th>
					<th>ID_EXTINCION</th>
					<th>FAMILIA</th>
					<th>NOM_COMUN</th>
					<th>PAIS_ORIGEN</th>
					<th>NOM_CIENTIFICO</th>
					<th colspan="2">METODOS</th>
				</tr>
			</thead>
			<?php 
			while($row=mysqli_fetch_array($query_especie)){
			?>
			<tbody>
				<tr>
					<th><?php echo $row["id_especie"]?></th>
					<th><?php echo $row["id_ext"]?></th>
					<th><?php echo $row["familia"]?></th>
					<th><?php echo $row["n_comun"]?></th>
					<th><?php echo $row["l_origen"]?></th>
					<th><?php echo $row["n_cientifico"]?></th>

					<th><a href="editar_especie.php?id_especie=<?php echo $row["id_especie"]?>">Editar</a></th>
					<td><a href="delete_especie.php?id=<?php echo $row['id_especie'] ?>">Eliminar</a></td>
				</tr>
			<?php
			}
			?>
			<tr>
				<th colspan="8" align="right"><button><a href="agregar_especie.php">NUEVO REGISTRO</a></button></th>
			</tr>
			</tbody>
		</table>
	</div>
		<br><br>
	<div>
		<table border="black">
			<thead>
				<tr>
					<th colspan="7"><h3>ANIMALES</h3></th>
				</tr>
				<tr>
					<th>ID_ANIMAL</th>
					<th>ID_ESPECIE</th>
					<th>NOMBRE</th>
					<th>FECHA DE LLEGADA</th>
					<th>SEXO</th>
					<th colspan="2">METODOS</th>
				</tr>
			</thead>
			<?php 
			while ($row=mysqli_fetch_array($query_animal)) {
			?>
			<tbody>
				<tr>
					<th><?php echo $row["id_animal"]?></th>
					<th><?php echo $row["id_especie"]?></th>
					<th><?php echo $row["nombre"]?></th>
					<th><?php echo $row["fecha"]?></th>
					<th><?php echo $row["sexo"]?></th>

					<th><a href="editar_animales.php?id_animal=<?php echo $row["id_animal"]?>">Editar</a></th>
					<td><a href="delete_animales.php?id=<?php echo $row['id_animal'] ?>">Eliminar</a></td>
				</tr>
			<?php
			}
			?>
			<tr>
				<th colspan="7" align="right"><button><a href="agregar_animales.php">NUEVO REGISTRO</a></button></th>
			</tr>
			</tbody>
		</table>
	</div>
		<br><br>
	<div>
		<table border="black">
			<thead>
				<tr>
					<th colspan="5"><h3>ANIMAL_ZOOLOGICO</h3></th>
				</tr>
				<tr>
					<th>ID_ZOOLOGICO</th>
					<th>ID_ANIMAL</th>
					<th>FECHA DE LLEGADA</th>
					<th colspan="2">METODOS</th>
				</tr>
			</thead>
			<?php
			while ($row = mysqli_fetch_array($query_animal_zoo)) {
			?>
			<tbody>
				<tr>
					<th><?php echo $row["id_zoo"]?></th>
					<th><?php echo $row["id_animal"]?></th>
					<th><?php echo $row["fecha_llegada"]?></th>

					<th><a href="editar_animal_zoologico.php?id_zoo=<?php echo $row["id_zoo"]?>">Editar</a></th>
					<td><a href="delete_animal_zoologico.php?id=<?php echo $row['id_zoo'] ?>">Eliminar</a></td>
				</tr>
			<?php 
			}
			?>
			<tr>
				<th colspan="5" align="right"><button><a href="agregar_animal_zoologico.php" >NUEVO REGISTRO</a></button></th>
			</tr>
			</tbody>
		</table>
	</div>


</body>
</html>