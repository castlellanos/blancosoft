<?php 

	class crud{
		
		
		
		
		
		public function agregar($datos){
			$obj= new conectar();
			$conexion=$obj->conexion();

			$sql="INSERT into tratamientos VALUES ('','$datos[0]','$datos[1]','$datos[2]','$datos[3]','1');";
			return mysqli_query($conexion,$sql);
		}



		public function obtenDatos($id){
			$obj= new conectar();
			$conexion=$obj->conexion();

			$sql="SELECT id,							
							nombre,
							nacimiento,fenotipo,color,hierro,numero,sexo,observacion
					from animales 
					where id='$id'";
			$result=mysqli_query($conexion,$sql);
			$ver=mysqli_fetch_row($result);

			$datos=array(
				'id' => $ver[0],
				'nombre' => $ver[1],
				'nacimiento' => $ver[2],		
				'fenotipo' => $ver[3]	,			
				'color' => $ver[4]	,			
				'hierro' => $ver[5]	,			
				'numero' => $ver[6]	,			
				'sexo' => $ver[7],
				'observacion' => $ver[8]						
				);
			return $datos;
		}

		public function actualizar($datos){
			$obj= new conectar();
			$conexion=$obj->conexion();
			

			$sql="UPDATE animales set nombre='$datos[1]',
										nacimiento='$datos[2]'
						where id=$datos[0]";
			return mysqli_query($conexion,$sql);
		}




		
		public function eliminar($idanimal){
			$obj= new conectar();
			$conexion=$obj->conexion();

			$sql="UPDATE animales set estado='0'  where id='$idanimal'";
			return mysqli_query($conexion,$sql);
		}
	}

 ?>