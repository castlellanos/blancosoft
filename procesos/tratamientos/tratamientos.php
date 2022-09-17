<!DOCTYPE html>
<html>
<head>
	<title></title>
	<?php require_once "../../librerias/scripts.php"; ?>
	
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class="card text-left">
					<div class="card-header">
						Tablas dinamicas con datatable y php
					</div>
					<div class="card-body">
						<span class="btn btn-primary" data-toggle="modal" data-target="#agregarnuevosdatosmodal">
							Agregar nuevo <span class="fa fa-plus-circle"></span>
						</span>
						<hr>
						<div id="tablaDatatable">
							<?php include_once './tabla.php'; ?>
						</div>
					</div>
					<div class="card-footer text-muted">
						ADSI
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="agregarnuevosdatosmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Agrega nuevo</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="frmnuevo">
						
						<input type="hidden" class="form-control input-sm" id="animal" name="animal" value="<?php echo($_GET['id']); ?>">
						<label>Fecha</label>
						<input type="date" class="form-control input-sm" id="fecha" name="fecha">
						<label>Tipo</label>
						<input type="input" class="form-control input-sm" id="tipo" name="tipo">
						<label>Observación</label>
						<input type="input" class="form-control input-sm" id="descripcion" name="descripcion">
						
						
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
					<button type="button" id="btnAgregarnuevo" class="btn btn-primary">Agregar nuevo</button>
				</div>
			</div>
		</div>
	</div>


	<!-- Modal -->
	<div class="modal fade" id="modalEditar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Actualizar Datos Animal</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="frmnuevoU">
						<input type="text" hidden="" id="id" name="id">
						<label>Nombre</label>
						<input type="text" class="form-control input-sm" id="nombreU" name="nombreU">
						<label>Fecha Nacimiento</label>
						<input type="date" class="form-control input-sm" id="f_nacU" name="f_nacU">
						<label>Fenotipo</label>
						<input type="text" class="form-control input-sm" id="fenotipoU" name="fenotipoU">
						<label>Color</label>
						<input type="text" class="form-control input-sm" id="colorU" name="colorU">
						<label>Hierro</label>
						<input type="text" class="form-control input-sm" id="hierroU" name="hierroU">
						<label>Numero</label>
						<input type="text" class="form-control input-sm" id="numeroU" name="numeroU">
						<label>Sexo</label>
						<input type="text" class="form-control input-sm" id="sexoU" name="sexoU">
						<label>Observación</label>
						<input type="" class="form-control input-sm" id="observacionU" name="observacionU">
						
						
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
					<button type="button" class="btn btn-warning" id="btnActualizar">Actualizar</button>
				</div>
			</div>
		</div>
	</div>

<!-- Modal -->
<div class="modal fade" id="modalEditar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Actualizar Datos Animal</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="frmnuevoU">
						<input type="text" hidden="" id="id" name="id">
						<label>Nombre</label>
						<input type="text" class="form-control input-sm" id="nombreU" name="nombreU">
						<label>Fecha Nacimiento</label>
						<input type="date" class="form-control input-sm" id="f_nacU" name="f_nacU">
						<label>Fenotipo</label>
						<input type="text" class="form-control input-sm" id="fenotipoU" name="fenotipoU">
						<label>Color</label>
						<input type="text" class="form-control input-sm" id="colorU" name="colorU">
						<label>Hierro</label>
						<input type="text" class="form-control input-sm" id="hierroU" name="hierroU">
						<label>Numero</label>
						<input type="text" class="form-control input-sm" id="numeroU" name="numeroU">
						<label>Sexo</label>
						<input type="text" class="form-control input-sm" id="sexoU" name="sexoU">
						<label>Observación</label>
						<input type="" class="form-control input-sm" id="observacionU" name="observacionU">
						
						
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
					<button type="button" class="btn btn-warning" id="btnActualizar">Actualizar</button>
				</div>
			</div>
		</div>
	</div>

	



<!-- Modal -->
<div class="modal fade" id="modalFormulario" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Actualizar Animal</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			
				
			</div>
		</div>
	</div>



	















</body>
</html>


<script type="text/javascript">
	$(document).ready(function(){
		$('#btnAgregarnuevo').click(function(){
			datos=$('#frmnuevo').serialize();

			$.ajax({
				type:"POST",
				data:datos,
				url:"operaciones/agregar.php",
				success:function(r){
					if(r==1){
		
						let searchParams = new URLSearchParams(datos);			
						let animal_id=searchParams.get("animal") ;
						let paramsString='tabla.php?id=' +animal_id;
						$('#frmnuevo')[0].reset();
						$('#tablaDatatable').load(paramsString);
						alertify.success("agregado con exito :D");
					}else{
						alertify.error("Fallo al agregar :(");
					}
				}
			});
		});

		$('#btnActualizar').click(function(){
			datos=$('#frmnuevoU').serialize();

			$.ajax({
				type:"POST",
				data:datos,
				url:"operaciones/actualizar.php",
				success:function(r){
					if(r==1){
						$('#tablaDatatable').load('tabla.php');
						alertify.success("Actualizado con exito :D");
					}else{
						alert(datos);
						alertify.error("Fallo al actualizar :(");
					}
				}
			});
		});
	});
</script>
<!-- <script type="text/javascript">
	$(document).ready(function(){
		$('#tablaDatatable').load('tabla.php');
	});
</script> -->

<script type="text/javascript">
	function agregaFrmActualizar(idanimal){
		$.ajax({
			type:"POST",
			data:"id=" + idanimal,
			url:"operaciones/obtenDatos.php",
			success:function(r){
				datos=jQuery.parseJSON(r);
				$('#id').val(datos['id']);
				$('#nombreU').val(datos['nombre']);
				$('#f_nacU').val(datos['nacimiento']);
				$('#fenotipoU').val(datos['fenotipo']);
				$('#colorU').val(datos['color']);
				$('#hierroU').val(datos['hierro']);
				$('#numeroU').val(datos['numero']);
				$('#sexoU').val(datos['sexo']);
				$('#observacionU').val(datos['observacion']);
				
				
			}
		});
	}

	function eliminarDatos(idanimal){
		alertify.confirm('Eliminar una Factura', '¿Seguro de eliminar este animal? :(?', function(){ 

			$.ajax({
				type:"POST",
				data:"idanimal=" + idanimal,
				url:"operaciones/eliminar.php",
				success:function(r){
					if(r==1){
						$('#tablaDatatable').load('tabla.php');
						alertify.success("Eliminado con exito !");
					}else{
						alertify.error("No se pudo eliminar...");
					}
				}
			});

		}
		, function(){

		});
	}

	





</script>