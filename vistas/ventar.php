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
                                <h1 class="box-title">Crear Venta
                                    <button class="btn btn-success" onclick="mostrarform(true)" name="nuevaventa" id="nuevaventa"><i
                                                class="fa fa-plus-circle"></i> Nueva
                                    </button>
                                    <button class="btn btn-primary" onclick="mostrarform(true)"><i
                                                class="fa fa-plus-circle"></i> Cotizar
                                    </button>
                                </h1>
                                <div class="box-tools pull-right">
                                </div>
                            </div>
                            <!--box-header-->
                            <!--centro-->
                            <div class="panel-body table-responsive" id="listadomotos">
                                <table id="tbllistadomotos"
                                       class="table table-striped table-bordered table-condensed table-hover">
                                    <thead>
                                    <th>Opciones</th>
                                    <th>Placa</th>
                                    <th>Marca/Cilindraje</th>
                                    <th>Linea</th>
                                    <th>Modelo</th>
                                    <th>Cliente</th>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                    <tfoot>
                                    <th>Opciones</th>
                                    <th>Placa</th>
                                    <th>Marca/Cilindraje</th>
                                    <th>Linea</th>
                                    <th>Modelo</th>
                                    <th>Cliente</th>
                                    </thead>
                                    </tfoot>
                                </table>
                            </div>
                            <div class="panel-body" style="height: 400px;" id="formularioregistros">
                                <form action="" name="formulario" id="formulario" method="POST">
                                    <div class="form-group col-lg-2 col-md-2 col-xs-4">
                                        <label style="color:red" for="" >Placa*: </label>
                                        <input class="form-control" type="hidden" name="idventa" id="idventa">
                                        <input class="form-control" type="text" name="placa"
                                               id="placa" maxlength="7" placeholder="Placa" onkeyup="javascript:this.value=this.value.toUpperCase()" required>
                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                        <label style="color:red" for="">Marca*: </label>
                                        <input class="form-control" type="text" name="marca"
                                               id="marca" maxlength="7" placeholder="Marca" required>
                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                        <label style="color:red" for="">Modelo*: </label>
                                        <input class="form-control" type="number" name="modelo"
                                               id="modelo" maxlength="7" placeholder="Modelo" required>
                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                        <label style="color:red" for="">Linea*: </label>
                                        <input class="form-control" type="text" name="linea"
                                               id="linea" maxlength="7" placeholder="Linea" required>
                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                        <label for="">Kilometraje: </label>
                                        <input class="form-control" type="text" name="kilometraje"
                                               id="kilometraje" maxlength="7" placeholder="Kilometraje" data-mask="000.000.000.000" data-mask-reverse="true">
                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                        <label style="color:red" for="">Fecha Ingreso(*): </label>
                                        <input class="form-control" type="date" name="fecha_ingreso" id="fecha_ingreso" disabled required>
                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                        <label style="color:red" for="">Cliente(*): </label>
                                        <input class="form-control" type="text" name="nombre_cliente" id="nombre_cliente">
                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                        <label style="color:red" for="">Celular(*): </label>
                                        <input class="form-control" type="number" name="celular" id="celular">
                                    </div>
                                    <div class="form-group col-lg-4 col-md-4 col-xs-6">
                                        <label style="color:red" for="">Procedimiento(*):</label>
                                        <select name="idprocedimiento" id="idprocedimiento" class="form-control selectpicker"
                                                data-live-search="true" required>
                                        </select>
                                    </div>
                                    <div class="form-group col-lg-4 col-md-4 col-xs-6">
                                        <label style="color:red" for="">Mecanico(*):</label>
                                        <select name="idmecanico" id="idmecanico" class="form-control selectpicker"
                                                data-live-search="true" required>
                                        </select>
                                    </div>
                                    <div class="form-group col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                        <a data-toggle="modal" href="#AgreNueArt">
                                            <button id="btnAgregarNueArt" type="button" class="btn btn-success"><span
                                                        class="fa fa-plus"></span> Agregar Nuevo Articulos
                                            </button>
                                        </a>
                                    </div>
                                    <div class="form-group col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                        <a data-toggle="modal" href="#AgreArt">
                                            <button id="btnAgregarArt" type="button" class="btn btn-primary"><span
                                                        class="fa fa-plus"></span> Agregar Articulos
                                            </button>
                                        </a>
                                    </div>
                                    <div class="form-group col-lg-12 col-md-10 col-xs-10">
                                        <table id="detalles"
                                               class="table table-striped table-bordered table-condensed table-hover">
                                            <thead style="background-color:#A9D0F5">
                                            <th>Opciones</th>
                                            <th>Articulo</th>
                                            <th>Cantidad</th>
                                            <th>Precio Venta</th>
                                            <th>Descuento</th>
                                            <th>Subtotal</th>
                                            </thead>
                                            <tfoot>
                                            <tr>
                                                <th>ABONO</th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th><input type="number" name="abono" id="abono" placeholder="Abono"></th>
                                            </tr>
                                            <tr>
                                            <th>TOTAL</th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                            <th><h4 id="total">$ 0.00</h4>
                                                <input type="hidden" name="total_venta" id="total_venta"></th>
                                            </tr>
                                            </tfoot>
                                            <tbody>

                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <a data-toggle="modal" href="#PagarS">
                                            <button class="btn btn-success" type="submit" id="btnPagar"><span
                                                        class="fa fa-money"></span> Pagar
                                            </button>
                                        </a>
                                        <button class="btn btn-primary" type="submit" id="btnGuardar"><i
                                                    class="fa fa-save"></i> Guardar
                                        </button>
                                        <button class="btn btn-danger" onclick="cancelarform()" type="button"
                                                id="btnCancelar"><i class="fa fa-arrow-circle-left"></i> Cancelar
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

        <!--Modal Crear Articulo-->
        <div class="modal fade" id="AgreNueArt" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" style="width: 65% !important;">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Seleccione un Articulo</h4>
                        <button type="button" class="btn btn-success" id="AgregarNuevoArt" "><span
                                    class="fa fa-plus"></span> Articulo</button>
                    </div>
                    <div class="modal-body">
                        <table id="tbnuevoArt" class="table table-striped table-bordered table-condensed table-hover">
                            <thead>
                            <th></th>
                            <th>Nombre</th>
                            <th>Categoria</th>
                            <th>Precio Venta</th>
                            </thead>
                            <tbody>
                            </tbody>
                            <tfoot>
                            <th></th>
                            <th>Nombre</th>
                            <th>Categoria</th>
                            <th>Precio Venta</th>
                            </tfoot>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" onclick="guardar()">Guardar Articulo</button>
                        <button class="btn btn-default" type="button" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- fin Modal-->

        <!--Modal Agregar Articulos-->
        <div class="modal fade" id="AgreArt" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" style="width: 65% !important;">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Seleccione un Articulo</h4>
                    </div>
                    <div class="modal-body">
                        <table id="tblarticulos" class="table table-striped table-bordered table-condensed table-hover">
                            <thead>
                            <th>Opciones</th>
                            <th>Nombre</th>
                            <th>Categoria</th>
                            <th>Código</th>
                            <th>Stock</th>
                            <th>Precio Venta</th>
                            <th>Imagen</th>
                            </thead>
                            <tbody>

                            </tbody>
                            <tfoot>
                            <th>Opciones</th>
                            <th>Nombre</th>
                            <th>Categoria</th>
                            <th>Código</th>
                            <th>Stock</th>
                            <th>Precio Venta</th>
                            <th>Imagen</th>
                            </tfoot>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-default" type="button" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- fin Modal-->

        <!--Modal Pagar-->
        <div class="modal fade" id="PagarS" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" style="width: 65% !important;">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <img src="../reportes/factura.png" align="center" alt="centered image">
                    </div>
                    <div class="modal-body">
                        <form action="" name="formularioPagar" id="formularioPagar" method="POST">
                            <div class="form-group col-lg-4 col-md-8 col-xs-12">
                                <label for="">Cliente(*):</label>
                                <input class="form-control" type="hidden" name="idventa" id="idventa">
                                <select name="idcliente" id="idcliente" class="form-control selectpicker"
                                        data-live-search="true" required>
                                </select>
                            </div>
                            <div class="form-group col-lg-4 col-md-4 col-xs-12">
                                <label for="">Fecha(*): </label>
                                <input class="form-control" type="date" name="fecha_hora" id="fecha_hora"
                                       required>
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-xs-12">
                                <label for="">Tipo Comprobante(*): </label>
                                <select name="tipo_comprobante" id="tipo_comprobante"
                                        class="form-control selectpicker" required>
                                    <option value="Factura">Factura</option>
                                </select>
                            </div>
                            <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                <label for="">Moto: </label>
                                <input class="form-control" type="text" name="moto"
                                       id="moto" maxlength="7" placeholder="Moto" required>
                            </div>
                            <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                <label for="">Placa: </label>
                                <input class="form-control" type="text" name="placa"
                                       id="placa" maxlength="10" placeholder="Placa" required>
                            </div>
                            <div class="form-group col-lg-2 col-md-2 col-xs-6">
                                <label for="">Impuesto: </label>
                                <input class="form-control" type="text" name="impuesto" id="impuesto">
                            </div>
                            <div class="form-group col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <a data-toggle="modal" href="#AgreArt">
                                    <button id="btnAgregarArt" type="button" class="btn btn-primary"><span
                                                class="fa fa-plus"></span>Agregar Articulos
                                    </button>
                                </a>
                            </div>
                            <div class="form-group col-lg-12 col-md-10 col-xs-10">
                                <table id="detalles"
                                       class="table table-striped table-bordered table-condensed table-hover">
                                    <thead style="background-color:#A9D0F5">
                                    <th>Opciones</th>
                                    <th>Articulo</th>
                                    <th>Cantidad</th>
                                    <th>Precio Venta</th>
                                    <th>Descuento</th>
                                    <th>Subtotal</th>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <th>ABONO</th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th><input type="" name="abono" id="abono" data-mask="000,000,000,000" data-mask-reverse="true" placeholder="Abono"></th>
                                    </tr>
                                    <tr>
                                        <th>TOTAL</th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th><h4 id="total">$ 0.00</h4><input type="hidden" name="total_venta"
                                                                             id="total_venta"></th>
                                    </tr>
                                    </tfoot>
                                    <tbody>

                                    </tbody>
                                </table>
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <a data-toggle="modal" href="#PagarS">
                                    <button class="btn btn-success" type="button" id="btnPagar" onclick="guardartemp(true)"><span
                                                class="fa fa-money"></span> Pagar
                                    </button>
                                </a>
                                <button class="btn btn-primary" type="submit" id="btnGuardar"><i
                                            class="fa fa-save"></i> Guardar
                                </button>
                                <button class="btn btn-danger" onclick="cancelarform()" type="button"
                                        id="btnCancelar"><i class="fa fa-arrow-circle-left"></i> Cancelar
                                </button>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-success" type="submit" id="btnPagar"><span
                                    class="fa fa-money"></span> Pagar
                        </button>
                        <button class="btn btn-default" type="button" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- fin Modal-->
        <?php
    } else {
        require 'noacceso.php';
    }

    require 'footer.php';
    ?>
    <script src="../public/js/JsBarcode.all.min.js"></script>
    <script src="../public/js/jquery.mask.js"></script>
    <script src="../public/js/jquery.PrintArea.js"></script>
    <script src="scripts/ventar.js"></script>
    <?php
}

ob_end_flush();
?>

