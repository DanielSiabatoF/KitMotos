<?php
require_once "../modelos/Ventar.php";
if (strlen(session_id()) < 1)
    session_start();

$ventar = new Ventar();

$idventa = isset($_POST["idventa"]) ? limpiarCadena($_POST["idventa"]) : "";
$idventatemp = isset($_POST["idventa"]) ? limpiarCadena($_POST["idventa"]) : "";
$idcotizacion = isset($_POST["idventa"]) ? limpiarCadena($_POST["idventa"]) : "";
$placa = isset($_POST["placa"]) ? limpiarCadena($_POST["placa"]) : "";
$marca = isset($_POST["marca"]) ? limpiarCadena($_POST["marca"]) : "";
$linea = isset($_POST["linea"]) ? limpiarCadena($_POST["linea"]) : "";
$modelo = isset($_POST["modelo"]) ? limpiarCadena($_POST["modelo"]) : "";
$clasevehiculo = isset($_POST["clasevehiculo"]) ? limpiarCadena($_POST["clasevehiculo"]) : "";
$kilometraje = isset($_POST["kilometraje"]) ? limpiarCadena($_POST["kilometraje"]) : "";
$idusuario = $_SESSION["idusuario"];
$idmecanico = isset($_POST["idmecanico"]) ? limpiarCadena($_POST["idmecanico"]) : "";
$idtipoprocedimiento = isset($_POST["idtipoprocedimiento"]) ? limpiarCadena($_POST["idtipoprocedimiento"]) : "";
$moto = isset($_POST["moto"]) ? limpiarCadena($_POST["moto"]) : "";
$fecha_ingreso = isset($_POST["fecha_ingreso"]) ? limpiarCadena($_POST["fecha_ingreso"]) : "";
$fecha_fin = isset($_POST["fecha_fin"]) ? limpiarCadena($_POST["fecha_fin"]) : "";
$abono = isset($_POST["abono"]) ? limpiarCadena($_POST["abono"]) : "";
$total_venta = isset($_POST["total_venta"]) ? limpiarCadena($_POST["total_venta"]) : "";
$idmoto = isset($_POST["idmoto"]) ? limpiarCadena($_POST["idmoto"]) : "";


switch ($_GET["op"]) {
    case 'pagar':
        if (empty($idventa)) {
            $rspta = $ventar->insertarVentaMotoCliente( $idusuario,$placa,$idmecanico,$Idtipoprocedimiento, $fecha_ingreso, $fecha_fin, $abono, $total_venta, $_POST["idarticulo"], $_POST["cantidad"], $_POST["precio_venta"], $_POST["descuento"]);
            echo $rspta ? "Datos registrados correctamente" : "No se pudo registrar los datos";
        } else {

        }
        break;

    case 'anular':
        $rspta = $ventar->anular($idventa);
        echo $rspta ? "Ingreso anulado correctamente" : "No se pudo anular el ingreso";
        break;

    case 'mostrar':
        $rspta = $ventar->mostrar($idventa);
        echo json_encode($rspta);
        break;

    case 'clientemoto':
        $rspta = $ventar->mostrarclientemotos($idmoto);
        echo json_encode($rspta);
        break;

    case 'listarDetalle':
        //recibimos el idventa
        $id = $_GET['id'];

        $rspta = $ventar->listarDetalle($id);
        $total = 0;
        echo ' <thead style="background-color:#A9D0F5">
        <th>Opciones</th>
        <th>Articulo</th>
        <th>Cantidad</th>
        <th>Precio Venta</th>
        <th>Descuento</th>
        <th>Subtotal</th>
       </thead>';
        while ($reg = $rspta->fetch_object()) {
            echo '<tr class="filas">
			<td></td>
			<td>' . $reg->nombre . '</td>
			<td>' . $reg->cantidad . '</td>
			<td>$ ' . number_format($reg->precio_venta) . '</td>
			<td>$ ' . number_format($reg->descuento) . '</td>
			<td>$ ' . number_format($reg->subtotal) . '</td></tr>';
            $total = $total + ($reg->precio_venta * $reg->cantidad - $reg->descuento);
        }
        echo '<tfoot>
         <th>TOTAL</th>
         <th></th>
         <th></th>
         <th></th>
         <th></th>
         <th><h4 id="total">$ ' . number_format($total) . '</h4><input type="hidden" name="total_venta" id="total_venta"></th>
       </tfoot>';
        break;

    case 'listar':
        $rspta = $ventar->listar();
        $data = array();

        while ($reg = $rspta->fetch_object()) {
            if ($reg->tipo_comprobante == 'Ticket') {
                $url = '../reportes/exTicket.php?id=';
            } else {
                $url = '../reportes/exFactura.php?id=';
            }

            $data[] = array(
                "0" => (($reg->estado == 'Pagado') ? '<button class="btn btn-warning btn-xs" onclick="mostrar(' . $reg->idventa . ')"><i class="fa fa-eye"></i></button>' . ' ' . '<button class="btn btn-danger btn-xs" onclick="anular(' . $reg->idventa . ')"><i class="fa fa-close"></i></button>' : '<button class="btn btn-warning btn-xs" onclick="mostrar(' . $reg->idventa . ')"><i class="fa fa-eye"></i></button>') .
                    '<a target="_blank" href="' . $url . $reg->idventa . '"> <button class="btn btn-info btn-xs"><i class="fa fa-file"></i></button></a>',
                "1" => $reg->fecha,
                "2" => $reg->cliente,
                "3" => $reg->usuario,
                "4" => $reg->moto,
                "5" => $reg->placa,
                "6" => '$ ' . number_format($reg->total_venta),
                "7" => ($reg->estado == 'Pagado') ? '<span class="label bg-green">' . $reg->estado . '</span>' : '<span class="label bg-red">' . $reg->estado . '</span>'
            );
        }
        $results = array(
            "sEcho" => 1,//info para datatables
            "iTotalRecords" => count($data),//enviamos el total de registros al datatable
            "iTotalDisplayRecords" => count($data),//enviamos el total de registros a visualizar
            "aaData" => $data);
        echo json_encode($results);
        break;

    case 'listarmotosventa':
        require_once "../modelos/Persona.php";
        $persona = new Persona();
        $rspta=$persona->listarmc();
        $data=Array();

        while ($reg=$rspta->fetch_object()) {
            $data[]=array(
                "0"=>'<button class="btn btn-success btn-xs" onclick="enviarmoto('.$reg->idmoto.')"><i class="fa fa-calculator"></i></button>'.' '.'<button class="btn btn-warning btn-xs" onclick="mostrar('.$reg->idmoto.')"><i class="fa fa-pencil"></i></button>'.' '.'<button class="btn btn-danger btn-xs" onclick="eliminar('.$reg->idmoto.')"><i class="fa fa-trash"></i></button>',
                "1"=>$reg->placa,
                "2"=>$reg->marca.'('.$reg->cilindraje.'cc)'.' ',
                "3"=>$reg->linea,
                "4"=>$reg->modelo,
                "5"=>$reg->nombre
            );
        }
        $results=array(
            "sEcho"=>1,//info para datatables
            "iTotalRecords"=>count($data),//enviamos el total de registros al datatable
            "iTotalDisplayRecords"=>count($data),//enviamos el total de registros a visualizar
            "aaData"=>$data);
        echo json_encode($results);
        break;

    case 'selectProcedimiento':
        $rspta = $ventar->selectProcesos();
        while ($reg = $rspta->fetch_object()) {
            echo '<option value=' . $reg->idtipoprocedimiento . '>' . $reg->nombre_proceso . '</option>';
        }
        break;

    case 'selectMecanico':
        require_once "../modelos/Persona.php";
        $persona = new Persona();
        $rspta=$persona->listarmecanico();
        while ($reg = $rspta->fetch_object()) {
            echo '<option value=' . $reg->idmecanico . '>' . $reg->nombremecanico . '</option>';
        }
        break;

    case 'listarArticulos':
        require_once "../modelos/Articulo.php";
        $articulo = new Articulo();

        $rspta = $articulo->listarActivosVenta();
        $data = array();

        while ($reg = $rspta->fetch_object()) {
            $data[] = array(
                "0" => '<button class="btn btn-warning" onclick="agregarDetalle(' . $reg->idarticulo . ',\'' . $reg->nombre . '\',' . $reg->precio_venta . ')"><span class="fa fa-plus"></span></button>',
                "1" => $reg->nombre,
                "2" => $reg->categoria,
                "3" => $reg->codigo,
                "4" => number_format($reg->stock) . ' ',
                "5" => '$ ' . number_format($reg->precio_venta) . ' ',
                "6" => "<img src='../files/articulos/" . $reg->imagen . "' height='50px' width='50px'>"

            );
        }
        $results = array(
            "sEcho" => 1,//info para datatables
            "iTotalRecords" => count($data),//enviamos el total de registros al datatable
            "iTotalDisplayRecords" => count($data),//enviamos el total de registros a visualizar
            "aaData" => $data);
        echo json_encode($results);

        break;

    case 'guardaryeditar':
        require_once "../modelos/Persona.php";
        $persona = new Persona();
        $rsptaConsultaMoto=$persona->listarmc();
        $rsptaConsultaMoto->fetch_object();
        if(empty($rsptaConsultaMoto->placa)) {
            $rsptaInsertClienteMoto=$ventar->insertarVentaMotoCliente($idcliente, $idusuario, $tipo_comprobante, $placa, $moto, $fecha_hora, $impuesto, $total_venta, $_POST["idarticulo"], $_POST["cantidad"], $_POST["precio_venta"], $_POST["descuento"]);
            if (empty($idventa)) {
                $rspta = $ventar->insertarVenta($idcliente, $idusuario, $tipo_comprobante, $placa, $moto, $fecha_hora, $impuesto, $total_venta, $_POST["idarticulo"], $_POST["cantidad"], $_POST["precio_venta"], $_POST["descuento"]);
                echo $rspta ? "Datos registrados correctamente" : "No se pudo registrar los datos";
            } else {
                echo "No se pudo registrar los datos";
            }
        }else{

        }
        break;

}
?>