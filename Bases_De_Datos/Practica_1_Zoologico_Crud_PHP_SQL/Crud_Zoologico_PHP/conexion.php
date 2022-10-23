<?php

function conectar(){
	$host = "localhost";
	$user = "root";
	$pass = "";

	$bd = "zoologicoo";

	$connect = mysqli_connect($host, $user, $pass);

	mysqli_select_db($connect, $bd);

	return $connect;
};
?>