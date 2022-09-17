
<?php 

require_once "../../clases/conexion.php";
$obj= new conectar();
$conexion=$obj->conexion();

$sql="SELECT
id, 
finca, 
nombre, 
nacimiento, 
fenotipo, 
color, 
hierro, 
numero, 
sexo, 
observacion
FROM
animales where estado='1'";
$result=mysqli_query($conexion,$sql);
//print_r(mysqli_fetch_row($result));
?>


<div style="overflow-x:auto;">
	<table class="table table-hover table-condensed table-bordered" id="iddatatable" >
		<thead style="background-color: #dc3545;color: white; font-weight: bold;">
			<tr>
				<td>Id</td>
				<td>Finca</td>
				<td>Nombre</td>
				<td>Fecha Nacimiento</td>
				<td>Fenotipo</td>
				<td>Color</td>
				
				<td>Hierro</td>
				<td>Numero</td>
				<td>Sexo</td>
				<td>Observacion</td>
				
				<td>Editar</td>
				<td>Tratamientos</td>
				<td>Eliminar</td>
				
			</tr>
		</thead>
		<tfoot style="background-color: #ccc;color: white; font-weight: bold;">
			<tr>
			<td>Id</td>
				<td>Finca</td>
				<td>Nombre</td>
				<td>Fecha Nacimiento</td>
				<td>Fenotipo</td>
				<td>Color</td>
				
				<td>Hierro</td>
				<td>Numero</td>
				<td>Sexo</td>
				<td>Observacion</td>
				
				
				<td>Editar</td>
				<td>Tratamientos</td>
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
					<td><?php echo $mostrar[5] ?></td>
					<td><?php echo $mostrar[6] ?></td>
					<td><?php echo $mostrar[7] ?></td>
					<td><?php echo $mostrar[8] ?></td>
					<td><?php echo $mostrar[9] ?></td>
								
					<td style="text-align: center;">
						<span class="btn btn-warning btn-sm" data-toggle="modal" data-target="#modalEditar" onclick="agregaFrmActualizar('<?php echo $mostrar[0] ?>')">
							<span class="fa fa-pencil-square-o"></span>
						</span>
					</td>
					<td style="text-align: center;">
					<a class="btn btn-danger btn-sm"  href='http://localhost/blancosoft/procesos/tratamientos/tratamientos.php?id=<?php echo($mostrar[0]);?>' onclick="window.open(this.href, 'mywin',
'left=20,top=20,width=800,height=800,toolbar=1,resizable=0'); return false;"  >
					<span class="fa fa-laptop"></span>
					</a>						
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