
<?php 

require_once "../../clases/conexion.php";


$obj= new conectar();
$conexion=$obj->conexion();
$trata_id=$_GET['id'];
$sql="SELECT id,animal,fecha,tipo, descripcion FROM `tratamientos` WHERE estado='1' AND animal = ".$trata_id."";


$result=mysqli_query($conexion,$sql);
//print_r(mysqli_fetch_row($result));
?>


<div style="overflow-x:auto;">
	<table class="table table-hover table-condensed table-bordered w-100" id="iddatatable" >
		<thead style="background-color: #3586dc;color: white; font-weight: bold;">
			<tr>
				<td>Id</td>
				<td>Animal</td>
				<td>Fecha</td>
				<td>Tipo</td>
				<td>Descripcion</td>
				
				
				<td>Editar</td>
				<td>Eliminar</td>
				
			</tr>
		</thead>
	
		<tbody >
			<?php 
			while ($mostrar=mysqli_fetch_row($result)) {
				?>
				<tr >
				<td ><?php echo $mostrar[0] ?></td>
					<td><?php echo $mostrar[1] ?></td>
					<td><?php echo $mostrar[2] ?></td>
					<td><?php echo $mostrar[3] ?></td>
					<td><?php echo $mostrar[4] ?></td>
										
					
					<td style="text-align: center;">
						<span class="btn btn-warning btn-sm" data-toggle="modal" data-target="#modalEditar" onclick="agregaFrmActualizar('<?php echo $mostrar[0] ?>')">
							<span class="fa fa-pencil-square-o"></span>
						</span>
					</td>
					
					<td style="text-align: center;">
						<span class="btn btn-danger btn-sm" onclick="eliminarDatos('<?php echo $mostrar[0] .'/'. $mostrar[1] ?>')">


							<span class="fa fa-trash"></span>
						</span>
					</td>
					
				</tr>
				<?php 
			}
			?>
		</tbody>
	</table>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		$('#iddatatable').DataTable();
	} );
</script>