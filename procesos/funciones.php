<?php 

	class funciones {
		public function obtenerRoles() {
			$obj = new conectar();
			$conexion = $obj->conexion();
			$sql = "SELECT id, nombre FROM roles";
			$result = mysqli_query($conexion,$sql);
			$datos = array();
			while ($mostrar=mysqli_fetch_row($result)) {
				$datos[] = array(
				'id' => $mostrar[0],
				'nombre' => $mostrar[1]						
				);
			}
			return $datos;
		}
	}
    
 ?>