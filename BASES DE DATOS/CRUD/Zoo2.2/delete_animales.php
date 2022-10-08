<?php
    include("conexion.php");
    $con=conectar();
    $id = $_GET['id'];
    $sql="DELETE FROM animal WHERE id_animal='$id'";
    $query = mysqli_query($con,$sql);

    if($query)
    {
        header("location:index.php");
    }
    mysqli_close($con);
?>