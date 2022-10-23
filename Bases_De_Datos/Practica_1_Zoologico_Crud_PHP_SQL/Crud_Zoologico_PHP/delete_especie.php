<?php
    include("conexion.php");
    $con=conectar();
    $id = $_GET['id'];
    $sql="DELETE FROM especie WHERE id_especie='$id'";
    $query = mysqli_query($con,$sql);

    if($query)
    {
        header("location:index.php");
    }
    mysqli_close($con);
?>