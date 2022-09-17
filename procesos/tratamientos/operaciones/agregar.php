<?php 
	require_once "../../../clases/conexion.php";
	require_once "../crud.php";
	$obj= new crud();

	$datos=array(
		$_POST['animal'],
		$_POST['fecha'],
		$_POST['tipo'],
		$_POST['descripcion']

				);

	echo $obj->agregar($datos);
	

 ?>