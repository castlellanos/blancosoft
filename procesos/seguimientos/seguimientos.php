<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>GINTAC</title>
    <?php 
	session_start();
	
	require_once "../../librerias/scripts.php";
	
	?>

    <link rel="icon" href="../../vistas/assets/dist/img/AdminLTELogo.png">
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="../../vistas/assets/plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../vistas/assets/dist/css/adminlte.min.css">
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav" style="font-size: 1.2vw;">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="../login.html?page=seguimientos" class="nav-link">Login</a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="#" class="nav-link active" >Gestion Seguimientos</a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="#" class="nav-link ">Gestion Animales</a>
                </li>
               
                
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="#" class="nav-link">Configuración</a>
                </li>

            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">


                <!-- Notifications Dropdown Menu -->
                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        <i class="far fa-bell"></i>
                        <span class="badge badge-warning navbar-badge">7</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <span class="dropdown-header">Notificaciones</span>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="fas fa-envelope mr-2"></i> 4 nuevos mensajes
                            <span class="float-right text-muted text-sm">3 minutos</span>
                        </a>
                        <div class="dropdown-divider"></div>

                        <a href="#" class="dropdown-item">
                            <i class="fas fa-file mr-2"></i> 3 nuevos reportes
                            <span class="float-right text-muted text-sm">2 dias</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">Ver todas las notificaciones</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                        <i class="fas fa-expand-arrows-alt"></i>
                    </a>
                </li>

            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4" style="position:fixed">
            <!-- Brand Logo -->
            <a href="index3.html" class="brand-link">
                <img src="../../vistas/assets/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
                    class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">GINTAC</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="../../vistas/assets/dist/img/user1-128x128.jpg" class="img-circle elevation-2"
                            alt="User Image">
                    </div>
                    <div class="info">
                        <?php
                            if(isset($_SESSION["correo"])) {
                                $_SESSION["usuario"] = $_SESSION["correo"];
                            } else {
                                $_SESSION["usuario"] = "no_identificado";
                            }
                        ?>
                        <a href="#" class="d-block" style="color: <?php echo ("no_identificado" === ($_SESSION["usuario"])) ? "#F7765A" : "#c2c7d0"; ?>">
                            <?php echo $_SESSION["usuario"]?>
                        </a>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                        <li class="nav-item menu-open">
                            <a href="#" class="nav-link active">
                                <i class="nav-icon fas fa-book"></i>
                                <p>
                                    Gestion Seguimientos
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="#" class="nav-link active ">
                                        <i class="far fa-circle nav-icon "></i>
                                        <p>Seguimientos</p>
                                    </a>
                                </li>

                            </ul>

                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle nav-icon "></i>
                                        <p>Configuración</p>
                                    </a>
                                </li>

                            </ul>
                        </li>


                        <li class="nav-item ">
                            <a href="#" class="nav-link ">
                                <i class="nav-icon fas fa-user"></i>
                                <p>
                                    Gestion Animales
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="../animales/animales.php" class="nav-link ">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Animales</p>
                                    </a>
                                </li>
                               
                            </ul>
                        </li>

                      

                        <li class="nav-item">
                            <a href="#" class="nav-link ">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Configuración
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Cambiar Contraseña</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Reportes Usuarios</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Parametros Generales</p>
                                    </a>
                                </li>
                            </ul>
                        </li>


                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-door-closed"></i>
                                <p class="text">Cerrar Sesión</p>
                            </a>
                        </li>

                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">

            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">Gestión Seguimientos</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Inicio</a></li>
                                <li class="breadcrumb-item active">Gestión Seguimientos</li>
                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <div class="content">
                <div class="container-fluid">

                    <div class="container" style="margin-left: 0px;margin-right: 0px;max-width:100%">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card text-left">
                                    <div class="card-header">
                                        Animales
                                    </div>
                                    <div class="card-body">
                                        <span class="btn btn-primary" data-toggle="modal"
                                            data-target="#agregarnuevosdatosmodal">
                                            Agregar nuevo <span class="fa fa-plus-circle"></span>
                                        </span>
                                        <hr>
                                        <div id="tablaDatatable"></div>
                                    </div>
                                    <div class="card-footer text-muted">
                                        ADSI
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="agregarnuevosdatosmodal" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                        <label>Nombre</label>
                                        <input type="hidden" class="form-control input-sm" id="nombre" name="nombre">
                                        <label>Fecha Nacimiento</label>
                                        <input type="date" class="form-control input-sm" id="f_nac" name="f_nac">
                                        

                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                    <button type="button" id="btnAgregarnuevo" class="btn btn-primary">Agregar
                                        nuevo</button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Modal -->
                    <div class="modal fade" id="modalEditar" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Actualizar Datos Seguimiento</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form id="frmnuevoU">
                                        <input type="hidden" hidden="" id="id" name="id">
                                        <label>Nombre</label>
                                        <input type="text" class="form-control input-sm" id="nombreU" name="nombreU">
                                        <label>Fecha Nacimiento</label>
                                        <input type="date" class="form-control input-sm" id="f_nacU" name="f_nacU">
                                      


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
                    <div class="modal fade" id="modalEditar" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                        <input type="text" class="form-control input-sm" id="fenotipoU"
                                            name="fenotipoU">
                                        <label>Color</label>
                                        <input type="text" class="form-control input-sm" id="colorU" name="colorU">
                                        <label>Hierro</label>
                                        <input type="text" class="form-control input-sm" id="hierroU" name="hierroU">
                                        <label>Numero</label>
                                        <input type="text" class="form-control input-sm" id="numeroU" name="numeroU">
                                        <label>Sexo</label>
                                        <input type="text" class="form-control input-sm" id="sexoU" name="sexoU">
                                        <label>Observación</label>
                                        <input type="" class="form-control input-sm" id="observacionU"
                                            name="observacionU">


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
                    <div class="modal fade" id="modalFormulario" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalLabel" aria-hidden="true">





                    </div><!-- /.container-fluid -->
                </div>





            </div>
            <!-- /.content-wrapper -->



        </div>
        <!-- ./wrapper -->

        <!-- REQUIRED SCRIPTS -->

        <!-- jQuery -->

        <!-- Bootstrap 4 -->
        <script src="../../vistas/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <script src="../../vistas/assets/dist/js/adminlte.min.js"></script>
</body>

</html>

<script type="text/javascript">
$(document).ready(function() {
    $('#btnAgregarnuevo').click(function() {
        datos = $('#frmnuevo').serialize();

        $.ajax({
            type: "POST",
            data: datos,
            url: "operaciones/agregar.php",
            success: function(r) {
                if (r == 1) {
                    $('#frmnuevo')[0].reset();
                    $('#tablaDatatable').load('tabla.php');
                    alertify.success("agregado con exito :D");
                } else {
                    alertify.error("Fallo al agregar :(");
                }
            }
        });
    });

    $('#btnActualizar').click(function() {
        datos = $('#frmnuevoU').serialize();

        $.ajax({
            type: "POST",
            data: datos,
            url: "operaciones/actualizar.php",
            success: function(r) {
                if (r == 1) {
                    $('#tablaDatatable').load('tabla.php');
                    alertify.success("Actualizado con exito :D");
                } else {
                    alert(datos);
                    alertify.error("Fallo al actualizar :(");
                }
            }
        });
    });
});
</script>
<script type="text/javascript">
$(document).ready(function() {
    $('#tablaDatatable').load('tabla.php');
});
</script>

<script type="text/javascript">
function agregaFrmActualizar(idanimal) {
    $.ajax({
        type: "POST",
        data: "id=" + idanimal,
        url: "operaciones/obtenDatos.php",
        success: function(r) {
            datos = jQuery.parseJSON(r);
        
        }
    });
}

function eliminarDatos(idanimal) {
    alertify.confirm('Eliminar Animal', '¿Seguro de eliminar este seguimiento? :(?', function() {

        $.ajax({
            type: "POST",
            data: "idanimal=" + idanimal,
            url: "operaciones/eliminar.php",
            success: function(r) {
                if (r == 1) {
                    $('#tablaDatatable').load('tabla.php');
                    alertify.success("Eliminado con exito !");
                } else {
                    alertify.error("No se pudo eliminar...");
                }
            }
        });

    }, function() {

    });
}

function myfunction(idanimal) {


    window.open("../tratamientos/tratamientos.php?id=" + idanimal, "Nueva Ventana",
        "menubar=1,resizable=1,width=970,height=750")
}
</script>