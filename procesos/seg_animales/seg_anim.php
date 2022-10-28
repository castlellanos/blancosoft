<!DOCTYPE html>
<html>
<head>
	<title></title>
	<?php require_once "../../librerias/scripts.php"; ?>
	
</head>
<body>
	<div class="container" style="margin-left: 0px;margin-right: 0px;max-width:100%">
		<div class="row">
			<div class="col-sm-12">
				<div class="card text-left">
					<div class="card-header">
						
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
						
						
						<input list="tipo" name="tipo" id="lista" class="form-control">
  
						<datalist id="tipo">
    <option value="Vacuna">
    <option value="Urgencia">
    <option value="Control Veterinario">
    
  </datalist>
  
						
						
						
						
						<label>Observación</label>
						
						<textarea class="form-control input-sm" id="descripcion" name="descripcion" rows="3"></textarea>
						
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

	




</body>
</html>



<script type="text/javascript">


	function guardar_registro(parametros){

var valor=parametros.split("-");
//var valor=seguimiento;
var seguimiento=valor[0];
var animal=valor[1];
var peso=valor[2];
var con_corp=valor[3];


alert(seguimiento);
alert(animal);
alert(peso);
alert(con_corp);
alertify.confirm('Guardar Registro?', '¿Seguro de guardar este registro? :(?', function(){ 

			var element = document.getElementsByName("a").value;

//var valores=seguimiento+element;


			$.ajax({
				type:"POST",
				data:seguimiento,
				url:"operaciones/guardar_registro.php",
				success:function(r){
					if(r==1){
					
						$('#tablaDatatable').load('tabla.php?id='+ valor[0]);
						alertify.success("Guardado con exito !");
					
					}else{
						alertify.error("No se pudo guardar...");
					}
				}
			});

		}
		, function(){

		});
	}

	





</script>