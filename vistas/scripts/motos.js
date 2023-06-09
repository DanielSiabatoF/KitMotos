var tabla;

//funcion que se ejecuta al inicio
function init(){
   mostrarform(false);
   listarm();

   $("#formulario").on("submit",function(e){
   	guardaryeditar(e);
   });

    //cargamos los items al celect categoria
	$.post("../ajax/persona.php?op=selectcliente", function(r){
    $("#idcliente").html(r);
    $("#idcliente").selectpicker('refresh');
    });
}

//funcion limpiar
function limpiar(){

	$("#nombre").val("");
	$("#num_documento").val("");
	$("#direccion").val("");
	$("#telefono").val("");
	$("#email").val("");
	$("#idpersona").val("");
}

//funcion mostrar formulario 
function mostrarform(flag){
	limpiar();
	if(flag){
		$("#listadoregistros").hide();
		$("#formularioregistros").show();
		$("#btnGuardar").prop("disabled",false);
		$("#btnagregar").hide();
	}else{
		$("#listadoregistros").show();
		$("#formularioregistros").hide();
		$("#btnagregar").show();
	}
}

//cancelar form
function cancelarform(){
	limpiar();
	mostrarform(false);
}

//funcion listar
function listarm(){
	tabla=$('#tbllistado').dataTable({
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
			url:'../ajax/persona.php?op=listarm',
			type: "get",
			dataType : "json",
			error:function(e){
				console.log(e.responseText);
			}
		},
		"bDestroy":true,
		"iDisplayLength":5,//paginacion
		"order":[[0,"desc"]]//ordenar (columna, orden)
	}).DataTable();
}
//funcion para guardaryeditar
function guardaryeditar(e){
     e.preventDefault();//no se activara la accion predeterminada 
     $("#btnGuardar").prop("disabled",true);
     var formData=new FormData($("#formulario")[0]);

     $.ajax({
     	url: "../ajax/persona.php?op=guardaryeditarm",
     	type: "POST",
     	data: formData,
     	contentType: false,
     	processData: false,

     	success: function(datos){
     		bootbox.alert(datos);
     		mostrarform(false);
     		tabla.ajax.reload();
     	}
     });

     limpiar();
}

function mostrar(idmoto){
	$.post("../ajax/persona.php?op=mostrarm",{idmoto : idmoto},
		function(data,status)
		{
			data=JSON.parse(data);
			mostrarform(true);
			$("#idcliente").val(data.idcliente);
			$("#idcliente").selectpicker('refresh');
			$("#clasevehiculo").val(data.clasevehiculo);
			$("#clasevehiculo").selectpicker('refresh');
			$("#placa").val(data.placa);
			$("#marca").val(data.marca);
			$("#linea").val(data.linea);
			$("#modelo").val(data.modelo);
			$("#cilindraje").val(data.cilindraje);
			$("#color").val(data.color);
			$("#kilometraje").val(data.kilometraje);
		})
}


//funcion para desactivar
function eliminar(idpersona){
	bootbox.confirm("¿Esta seguro de eliminar este dato?", function(result){
		if (result) {

			$.post("../ajax/persona.php?op=eliminar", {idpersona : idpersona }, function(e){
				bootbox.alert(e);
				tabla.ajax.reload();
			});
		}
	})
}

function enviarmoto(idmoto){
	$.ajax({
		url:"../vistas/ventar.php",
		type: "POST",
		data: {
			idmoto: idmoto
		},
		success: function(respuesta){
			window.location.href = 'ventar.php';
		}
	});
}

init();