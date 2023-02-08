<?php
require_once "../modelos/Ventar.php";
if (strlen(session_id()) < 1)
    session_start();

$ventar = new Ventar();

$idventa = isset($_POST["idventa"]) ? limpiarCadena($_POST["idventa"]) : "";
$idcliente = isset($_POST["idcliente"]) ? limpiarCadena($_POST["idcliente"]) : "";
$idusuario = $_SESSION["idusuario"];
$tipo_comprobante = isset($_POST["tipo_comprobante"]) ? limpiarCadena($_POST["tipo_comprobante"]) : "";
$placa = isset($_POST["placa"]) ? limpiarCadena($_POST["placa"]) : "";
$moto = isset($_POST["moto"]) ? limpiarCadena($_POST["moto"]) : "";
$fecha_hora = isset($_POST["fecha_hora"]) ? limpiarCadena($_POST["fecha_hora"]) : "";
$impuesto = isset($_POST["impuesto"]) ? limpiarCadena($_POST["impuesto"]) : "";
$total_venta = isset($_POST["total_venta"]) ? limpiarCadena($_POST["total_venta"]) : "";


switch ($_GET["op"]) {
    case 'guardaryeditar':
        if (empty($idventa)) {
            $rspta = $ventar->insertar($idcliente, $idusuario, $tipo_comprobante, $placa, $moto, $fecha_hora, $impuesto, $total_venta, $_POST["idarticulo"], $_POST["cantidad"], $_POST["precio_venta"], $_POST["descuento"]);
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
                "0" => (($reg->estado == 'Aceptado') ? '<button class="btn btn-warning btn-xs" onclick="mostrar(' . $reg->idventa . ')"><i class="fa fa-eye"></i></button>' . ' ' . '<button class="btn btn-danger btn-xs" onclick="anular(' . $reg->idventa . ')"><i class="fa fa-close"></i></button>' : '<button class="btn btn-warning btn-xs" onclick="mostrar(' . $reg->idventa . ')"><i class="fa fa-eye"></i></button>') .
                    '<a target="_blank" href="' . $url . $reg->idventa . '"> <button class="btn btn-info btn-xs"><i class="fa fa-file"></i></button></a>',
                "1" => $reg->fecha,
                "2" => $reg->cliente,
                "3" => $reg->usuario,
                "4" => $reg->moto,
                "5" => $reg->placa,
                "6" => '$ ' . number_format($reg->total_venta),
                "7" => ($reg->estado == 'Pagado') ? '<span class="label bg-green">'.$reg->estado.'</span>' : '<span class="label bg-red">'.$reg->estado.'</span>'
            );
        }
        $results = array(
            "sEcho" => 1,//info para datatables
            "iTotalRecords" => count($data),//enviamos el total de registros al datatable
            "iTotalDisplayRecords" => count($data),//enviamos el total de registros a visualizar
            "aaData" => $data);
        echo json_encode($results);
        break;

    case 'selectCliente':
        require_once "../modelos/Persona.php";
        $persona = new Persona();

        $rspta = $persona->listarc();

        while ($reg = $rspta->fetch_object()) {
            echo '<option value=' . $reg->idpersona . '>' . $reg->nombre . '</option>';
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
}
?>