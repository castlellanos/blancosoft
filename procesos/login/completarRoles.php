<?php 

		require_once "../../clases/conexion.php";
		require_once "../funciones.php";

        $obj = new funciones();

        echo json_encode($obj->obtenerRoles());
    
 ?>