<?php 
	require_once "../../../clases/conexion.php";
	require_once "../crud.php";
	$obj= new crud();

	$datos=array(
		$_POST['nombre'],
		$_POST['f_nac'],
		$_POST['fenotipo'],
		$_POST['color'],
		$_POST['hierro'],
		$_POST['numero'],
		$_POST['sexo'],
		$_POST['observacion']

				);

	echo $obj->agregar($datos);
	

 ?>