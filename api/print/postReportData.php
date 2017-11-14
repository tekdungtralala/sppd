<?php
	include '../connect.php';
	$json = file_get_contents('php://input');
	$data = (array) json_decode($json);
	session_start();
	$_SESSION["data"] = $data;
	echo $data[0]->base;
?>