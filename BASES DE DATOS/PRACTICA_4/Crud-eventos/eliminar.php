<?php
    include("conexion.php");
    $con=conectar();

    $id=$_GET['id'];

    $sql="DELETE FROM disfraz WHERE MODELO_DISFRAZ = '$id'";
    $query = mysqli_query($con,$sql);

    if($query)
    {
        header("Location:index.php");
    }
    mysqli_close($con);
?>