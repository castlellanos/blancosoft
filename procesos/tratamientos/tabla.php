
<?php 

require_once "../../clases/conexion.php";

var_dump($_REQUEST);


$obj= new conectar();
$conexion=$obj->conexion();

$sql="SELECT id,animal,fecha,tipo, descripcion FROM `tratamientos` where estado='1'";
$result=mysqli_query($conexion,$sql);
?>


<div style="overflow-x:auto;">
	<table class="table table-hover table-condensed table-bordered" id="iddatatable" >
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
		<tfoot style="background-color: #ccc;color: white; font-weight: bold;">
			<tr>
				<td>Id</td>
				<td>Animal</td>
				<td>Fecha</td>
				<td>Tipo</td>
				<td>Descripcion</td>
				
				
				<td>Editar</td>
				<td>Eliminar</td>
				
			</tr>
		</tfoot>
		<tbody >
			<?php 
			while ($mostrar=mysqli_fetch_row($result)) {
				?>
				<tr >
				<td><?php echo $mostrar[0] ?></td>
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
						<span class="btn btn-danger btn-sm" onclick="eliminarDatos('<?php echo $mostrar[0] ?>')">
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