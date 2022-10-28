<?php 
	
	require_once "../../../clases/conexion.php";
	require_once "../crud.php";

	$obj= new crud();

	echo $obj->eliminar($_POST['idanimal']);

 ?>