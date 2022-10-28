
<?php 

require_once "../../clases/conexion.php";


$obj= new conectar();
$conexion=$obj->conexion();
//$trata_id=$_GET['id'];
$sql="SELECT CONCAT(seguimiento,'-', animal) as id, animales.nombre, peso, con_corp FROM	seg_animal	INNER JOIN	animales	ON 		seg_animal.animal = animales.id WHERE	animales.estado = 1";




$result=mysqli_query($conexion,$sql);
//print_r(mysqli_fetch_row($result));
?>


<div style="overflow-x:auto;">
	<table class="table table-hover table-condensed table-bordered w-100" id="iddatatable" >
		<thead style="background-color: #3586dc;color: white; font-weight: bold;">
			<tr>
				<td>Id</td>
			    <td>Nombre Animal</td>
				<td>Peso</td>
				<td>Condicion Corporal</td>
				<td>Guardar</td>
			</tr>
		</thead>
		<form action='tabla.php' metod='post'>
		<tbody >
			<?php 
			while ($mostrar=mysqli_fetch_row($result)) {
				?>
				<tr >
				<td ><?php echo $mostrar[0] ?></td>
					<td><?php echo $mostrar[1] ?></td>
					<td><input type="text" name="a" value="<?php echo $mostrar[2] ?>"></input></td>
					<td><input type="text" name="b" value="<?php echo $mostrar[3] ?>"></input></td>
					<td style="text-align: center;">
						<span class="btn btn-success btn-sm" onclick="guardar_registro('<?php echo $mostrar[0] . '-' ?> ' )">
							<span class="fa fa-plus-circle"></span>
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