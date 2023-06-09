<?php
//activamos almacenamiento en el buffer
ob_start();
session_start();

if (!isset($_SESSION['nombre'])) {
    header("Location: login.html");
} else {

    require 'header.php';
    if ($_SESSION['ventasr'] == 1) {
        ?>
        <div class="content-wrapper">
            <!-- Main content -->
            <section class="content">

                <!-- Default box -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="box">
                            <div class="box-header with-border">
                                <h1 class="box-title"><i class="fa fa-motorcycle"></i> Motos
                                    <button class="btn btn-success" onclick="mostrarform(true)"><i
                                                class="fa fa-plus-circle"></i>Agregar
                                    </button>
                                </h1>
                                <div class="box-tools pull-right">

                                </div>
                            </div>
                            <!--box-header-->
                            <!--centro-->
                            <div class="panel-body table-responsive" id="listadoregistros">
                                <table id="tbllistado"
                                       class="table table-striped table-bordered table-condensed table-hover">
                                    <thead>
                                    <th>Opciones</th>
                                    <th>Placa</th>
                                    <th>Marca</th>
                                    <th>Linea</th>
                                    <th>Modelo</th>
                                    <th>Kilometraje</th>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                    <tfoot>
                                    <th>Opciones</th>
                                    <th>Placa</th>
                                    <th>Marca</th>
                                    <th>Linea</th>
                                    <th>Modelo</th>
                                    <th>Kilometraje</th>
                                    </tfoot>
                                </table>
                            </div>
                            <div class="panel-body" style="height: 400px;" id="formularioregistros">
                                <form action="" name="formulario" id="formulario" method="POST">
                                    <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                        <label style="color:red" for="">Dueño(*):</label>
                                        <select name="idcliente" id="idcliente" class="form-control selectpicker"
                                                data-live-search="true" required>
                                        </select>
                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-xs-12">
                                        <label style="color:red" for="">Clase de Vehiculo(*):</label>
                                        <select class="form-control select-picker" name="clasevehiculo"
                                                id="clasevehiculo" required>
                                            <option value="MOTOCICLETA">Moto</option>
                                            <option value="CUATRIMOTO">Cuatrimoto</option>
                                            <option value="MOTOCARRO">Motocarro</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                        <label style="color:red" for="">Placa *</label>
                                        <input class="form-control" type="hidden" name="idmoto" id="idmoto">
                                        <input class="form-control" type="text" name="placa"
                                               id="placa" maxlength="7" placeholder="Placa" onkeyup="javascript:this.value=this.value.toUpperCase()" required>
                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                        <label style="color:red" for="">Marca*: </label>
                                        <input class="form-control" type="text" name="marca"
                                               id="marca" maxlength="7" placeholder="Marca" required>
                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                        <label style="color:red" for="">Linea*: </label>
                                        <input class="form-control" type="text" name="linea"
                                               id="linea" maxlength="7" placeholder="Linea" required>
                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                        <label style="color:red" for="">Modelo*: </label>
                                        <input class="form-control" type="number" name="modelo"
                                               id="modelo" maxlength="7" placeholder="Modelo" required>
                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                        <label style="color:red" for="">Cilindraje*: </label>
                                        <input class="form-control" type="number" name="cilindraje"
                                               id="cilindraje" maxlength="7" placeholder="Cilindraje" required>
                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                        <label for="">Color: </label>
                                        <input class="form-control" type="text" name="color"
                                               id="color" maxlength="7" placeholder="Color">
                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                        <label for="">Kilometraje: </label>
                                        <input class="form-control" type="text" name="kilometraje"
                                               id="kilometraje" maxlength="7" placeholder="Kilometraje" data-mask="000.000.000.000" data-mask-reverse="true">
                                    </div>
                                    <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <button class="btn btn-primary" type="submit" id="btnGuardar"><i
                                                    class="fa fa-save"></i> Guardar
                                        </button>

                                        <button class="btn btn-danger" onclick="cancelarform()" type="button"><i
                                                    class="fa fa-arrow-circle-left"></i> Cancelar
                                        </button>
                                    </div>
                                </form>
                            </div>
                            <!--fin centro-->
                        </div>
                    </div>
                </div>
                <!-- /.box -->

            </section>
            <!-- /.content -->
        </div>
        <?php
    } else {
        require 'noacceso.php';
    }
    require 'footer.php';
    ?>
    <script src="scripts/motos.js"></script>
    <script src="../public/js/jquery.mask.js"></script>
    <?php
}

ob_end_flush();
?>
