var tabla;

//funcion que se ejecuta al inicio
function init() {
    mostrarform(false);
    listar();

    $("#formulario").on("submit", function (e) {
        guardaryeditar(e);
    });

    $("#formulario1").on("submit", function (e) {
        guardaryeditar(e);
    });

    //cargamos los items al select procedimiento
    $.post("../ajax/ventar.php?op=selectProcedimiento", function (r) {
        $("#idprocedimiento").html(r);
        $('#idprocedimiento').selectpicker('refresh');
    });

    //cargamos los items al select procedimiento
    $.post("../ajax/ventar.php?op=selectMecanico", function (r) {
        $("#idmecanico").html(r);
        $('#idmecanico').selectpicker('refresh');
    });

    //cargamos los items al celect categoria
    $.post("../ajax/articulo.php?op=selectCategoria", function(r){
        $("#idcategoria").html(r);
        $("#idcategoria").selectpicker('refresh');
    });

}

//funcion limpiar
function limpiar() {

    $("#placa").val("");
    $("#marca").val("");
    $("#modelo").val("");
    $("#linea").val("");
    $("#kilometraje").val("");

    $("#total_venta").val("");
    $(".filas").remove();
    $("#total").html("0");

    //obtenemos la fecha actual
    var now = new Date();
    var day = ("0" + now.getDate()).slice(-2);
    var month = ("0" + (now.getMonth() + 1)).slice(-2);
    var today = now.getFullYear() + "-" + (month) + "-" + (day);
    $("#fecha_ingreso").val(today);

    //marcamos el primer tipo_documento
    $("#tipo_comprobante").val("Boleta");
    $("#tipo_comprobante").selectpicker('refresh');

}

//funcion mostrar formulario
function mostrarform(flag) {
    limpiar();
    if (flag) {
        $("#listadomotos").hide();
        $("#listadoregistros").hide();
        $("#formularioregistros").show();
        $("#btnagregar").hide();
        listarArticulos();

        $("#nuevaventa").hide();
        $("#btnPagar").hide();
        $("#btnGuardar").hide();
        $("#btnCancelar").show();
        detalles = 0;
        nuevo=0;
        $("#btnAgregarArt").show();
    } else {
        $("#listadomotos").show();
        $("#listadoregistros").show();
        $("#formularioregistros").hide();
        $("#btnagregar").show();
    }
}

//cancelar form
function cancelarform() {
    limpiar();
    $("#nuevaventa").show();
    mostrarform(false);
    $("#placa").removeAttr('disabled');
    $("#marca").removeAttr('disabled');
    $("#modelo").removeAttr('disabled');
    $("#linea").removeAttr('disabled');
    $("#kilometraje").removeAttr('disabled');

}

//funcion listar
function listar() {
    tabla = $('#tbllistadomotos').dataTable({
        "aProcessing": true,//activamos el procedimiento del datatable
        "aServerSide": true,//paginacion y filrado realizados por el server
        dom: 'Bfrtip',//definimos los elementos del control de la tabla
        buttons: [
            'copyHtml5',
            'excelHtml5',
            'csvHtml5',
            'pdf'
        ],
        "ajax":
            {
                url: '../ajax/ventar.php?op=listarmotosventa',
                type: "get",
                dataType: "json",
                error: function (e) {
                    console.log(e.responseText);
                }
            },
        "bDestroy": true,
        "iDisplayLength": 5,//paginacion
        "order": [[0, "desc"]]//ordenar (columna, orden)
    }).DataTable();
}

function listarArticulos() {
    tabla = $('#tblarticulos').dataTable({
        "aProcessing": true,//activamos el procedimiento del datatable
        "aServerSide": true,//paginacion y filrado realizados por el server
        dom: 'Bfrtip',//definimos los elementos del control de la tabla
        buttons: [],
        "ajax":
            {
                url: '../ajax/ventar.php?op=listarArticulos',
                type: "get",
                dataType: "json",
                error: function (e) {
                    console.log(e.responseText);
                }
            },
        "bDestroy": true,
        "iDisplayLength": 5,//paginacion
        "order": [[0, "desc"]]//ordenar (columna, orden)
    }).DataTable();
}

//funcion para guardaryeditar
function guardaryeditar(e) {
    e.preventDefault();//no se activara la accion predeterminada
    //$("#btnGuardar").prop("disabled",true);
    var formData = new FormData($("#formulario")[0]);

    $.ajax({
        url: "../ajax/ventar.php?op=guardaryeditar",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,

        success: function (datos) {
            bootbox.alert(datos);
            mostrarform(false);
            listar();
        }
    });

    limpiar();
}

function mostrar(idventa) {
    $.post("../ajax/ventar.php?op=mostrar", {idventa: idventa},
        function (data, status) {
            data = JSON.parse(data);
            mostrarform(true);

            $("#idcliente").val(data.idcliente);
            $("#idcliente").selectpicker('refresh');
            $("#tipo_comprobante").val(data.tipo_comprobante);
            $("#tipo_comprobante").selectpicker('refresh');
            $("#placa").val(data.placa);
            $("#moto").val(data.moto);
            $("#fecha_hora").val(data.fecha);
            $("#impuesto").val(data.impuesto);
            $("#idventa").val(data.idventa);
            $("#celular").mask()

            //ocultar y mostrar los botones
            $("#btnGuardar").hide();
            $("#btnCancelar").show();
            $("#btnAgregarArt").hide();
        });
    $.post("../ajax/ventar.php?op=listarDetalle&id=" + idventa, function (r) {
        $("#detalles").html(r);
    });
}

function enviarmoto(idmoto) {
    $.post("../ajax/ventar.php?op=clientemoto", {idmoto: idmoto},
        function (data, status) {
            data = JSON.parse(data);
            mostrarform(true);
            //obtenemos la fecha actual
            var now = new Date();
            var day = ("0" + now.getDate()).slice(-2);
            var month = ("0" + (now.getMonth() + 1)).slice(-2);
            var today = now.getFullYear() + "-" + (month) + "-" + (day);
            var marcacilindraje = data.marca + " (" + data.cilindraje +"cc)";

            $("#idventa").val(data.idventa);
            $("#placa").val(data.placa);
            $("#placa").attr('disabled','disabled');
            $("#marca").val(marcacilindraje);
            $("#marca").attr('disabled','disabled');
            $("#modelo").val(data.modelo);
            $("#modelo").attr('disabled','disabled');
            $("#linea").val(data.linea);
            $("#linea").attr('disabled','disabled');
            $("#kilometraje").val(new Intl.NumberFormat().format(data.kilometraje));
            $("#nombre_cliente").val(data.nombre);
            $("#celular").val(data.telefono);
            $("#fecha_ingreso").val(today);

            $("#abono").val("");
            //ocultar y mostrar los botones
            $("#nuevaventa").hide();
            $("#btnGuardar").hide();
            $("#btnCancelar").show();
            $("#btnAgregarArt").show();
        });
}

//funcion para desactivar
function anular(idventa) {
    bootbox.confirm("¿Esta seguro de desactivar este dato?", function (result) {
        if (result) {
            $.post("../ajax/ventar.php?op=anular", {idventa: idventa}, function (e) {
                bootbox.alert(e);
                tabla.ajax.reload();
            });
        }
    })
}

//declaramos variables necesarias para trabajar con las compras y sus detalles
var impuesto = 0;
var cont = 0;
var contA=0;
var detalles = 0;
var nuevo=0;

$("#btnGuardar").hide();
$("#tipo_comprobante").change(marcarImpuesto);

function marcarImpuesto() {
    var tipo_comprobante = $("#tipo_comprobante option:selected").text();
    if (tipo_comprobante == 'Factura') {
        $("#impuesto").val("0");
    } else {
        $("#impuesto").val("0");
    }
}

function agregarDetalle(idarticulo, articulo, precio_venta) {
    var cantidad = 1;
    var descuento = 0;
    if (idarticulo != "") {
        var subtotal = cantidad * precio_venta;
        var fila = '<tr class="filas" id="fila' + cont + '">' +
            '<td><button type="button" class="btn btn-danger" onclick="eliminarDetalle(' + cont + ')">X</button></td>' +
            '<td><input type="hidden" name="idarticulo[]" value="' + idarticulo + '">' + articulo + '</td>' +
            '<td><input type="number" name="cantidad[]" id="cantidad[]" value="' + cantidad + '"></td>' +
            '<td><input type="number" name="precio_venta[]" id="precio_venta[]" value="' + precio_venta + '"></td>' +
            '<td><input type="number" name="descuento[]" value="' + descuento + '"></td>' +
            '<td><span id="subtotal' + cont + '" name="subtotal">' + $("#subtotal").html("$ " + new Intl.NumberFormat('es-CO').format(subtotal)) + '</span></td>' +
            '<td><button type="button" onclick="modificarSubtotales()" class="btn btn-info"><i class="fa fa-refresh"></i></button></td>' +
            '</tr>';
        cont++;
        detalles++;
        $('#detalles').append(fila);
        modificarSubtotales();
    } else {
        alert("error al ingresar el detalle, revisar las datos del articulo ");
    }
}

$("#AgregarNuevoArt").on("click", function(){
    $('#tbnuevoArt').
    append($('<tr>')
        .append($('<td>')
            .append($('<input>').attr)));
    contA++;
    nuevo++;

});

function agregarNuevo() {

}

function modificarSubtotales() {
    var cant = document.getElementsByName("cantidad[]");
    var prev = document.getElementsByName("precio_venta[]");
    var desc = document.getElementsByName("descuento[]");
    var sub = document.getElementsByName("subtotal");


    for (var i = 0; i < cant.length; i++) {
        var inpV = cant[i];
        var inpP = prev[i];
        var inpS = sub[i];
        var des = desc[i];
        inpS.value = (inpV.value * inpP.value) - des.value;
        document.getElementsByName("subtotal")[i].innerHTML = inpS.value;
    }
    calcularTotales();
}

function calcularTotales() {
    var sub = document.getElementsByName("subtotal");
    var total = 0.0;
    var abo = $("#abono").val();

    for (var i = 0; i < sub.length; i++) {
        total += document.getElementsByName("subtotal")[i].value;
    }
    total=total-abo;
    $("#total").html("$ " + new Intl.NumberFormat('es-CO').format(total));
    $("#total_venta").val(total);
    evaluar();
}

function evaluar() {
    if (detalles > 0) {
        $("#btnGuardar").show();
        $("#btnPagar").show();
    } else {
        $("#btnGuardar").hide();
        $("#btnPagar").hide();
        cont = 0;
    }
}

function evaluarArt() {
    if (nuevo > 0) {
        $("#btnGuardar").show();
        $("#btnPagar").show();
    } else {
        $("#btnGuardar").hide();
        $("#btnPagar").hide();
        contA = 0;
    }
}

function eliminarDetalle(indice) {
    $("#fila" + indice).remove();
    detalles = detalles - 1;
    calcularTotales();
}

init();