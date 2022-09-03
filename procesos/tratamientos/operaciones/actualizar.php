<?php 
	require_once "../../../clases/conexion.php";
	require_once "../crud.php";
	$obj= new crud();

	$datos=array(
		$_POST['id'],
		$_POST['nombreU'],
		$_POST['f_nacU'],
		$_POST['fenotipoU'],
		$_POST['colorU'],
		$_POST['hierroU'],
		$_POST['numeroU'],
		$_POST['sexoU'],
		$_POST['observacionU']
		
	);


	echo $obj->actualizar($datos);
	

 ?>
