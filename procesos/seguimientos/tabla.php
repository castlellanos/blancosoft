
<?php 

require_once "../../clases/conexion.php";
$obj= new conectar();
$conexion=$obj->conexion();

$sql="SELECT
id, 
finca, 
fecha
FROM
seguimientos";
$result=mysqli_query($conexion,$sql);
//print_r(mysqli_fetch_row($result));
?>


<div style="overflow-x:auto;">
	<table class="table table-hover table-condensed table-bordered w-100" id="iddatatable" >
		<thead style="background-color: #dc3545;color: white; font-weight: bold;">
			<tr>
				<td>Id</td>
				
				<td>Fecha</td>
				
				<td>Animales</td>
				<td>Plantas</td>
				<td>Suelos</td>
				<td>Editar</td>
				<td>Eliminar</td>
			</tr>
		</thead>
	
		<tbody >
			<?php 
			while ($mostrar=mysqli_fetch_row($result)) {
				?>
				<tr >
				<td><?php echo $mostrar[0] ?></td>
					
					<td><?php echo $mostrar[2] ?></td>
					
								
					<td style="text-align: center;">
					<a class="btn btn-secondary btn-sm"  href='http://localhost/blancosoft/procesos/tratamientos/tratamientos.php?id=<?php echo($mostrar[0]);?>' onclick="window.open(this.href, 'mywin',
'left=20,top=20,width=800,height=800,toolbar=1,resizable=0'); return false;"  >
					<span class="fa fa-paw"></span>
					</a>						
					</td>
					<td style="text-align: center;">
					<a class="btn btn-success btn-sm"  href='http://localhost/blancosoft/procesos/tratamientos/tratamientos.php?id=<?php echo($mostrar[0]);?>' onclick="window.open(this.href, 'mywin',
'left=20,top=20,width=800,height=800,toolbar=1,resizable=0'); return false;"  >
					<span class="fa fa-tree"></span>
					</a>						
					</td>
					<td style="text-align: center;">
						<span class="btn btn-info btn-sm" onclick="eliminarDatos('<?php echo $mostrar[0] ?>')">
							<span class="fa fa-thermometer-empty"></span>
						</span>
					</td>
					<td style="text-align: center;">
						<span class="btn btn-warning btn-sm" onclick="eliminarDatos('<?php echo $mostrar[0] ?>')">
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