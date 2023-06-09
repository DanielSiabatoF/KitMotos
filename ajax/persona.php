<?php 
require_once "../modelos/Persona.php";

$persona=new Persona();
//Personas
$idpersona=isset($_POST["idpersona"])? limpiarCadena($_POST["idpersona"]):"";
$tipo_persona=isset($_POST["tipo_persona"])? limpiarCadena($_POST["tipo_persona"]):"";
$nombre=isset($_POST["nombre"])? limpiarCadena($_POST["nombre"]):"";
$tipo_documento=isset($_POST["tipo_documento"])? limpiarCadena($_POST["tipo_documento"]):"";
$num_documento=isset($_POST["num_documento"])? limpiarCadena($_POST["num_documento"]):"";
$direccion=isset($_POST["direccion"])? limpiarCadena($_POST["direccion"]):"";
$telefono=isset($_POST["telefono"])? limpiarCadena($_POST["telefono"]):"";
$email=isset($_POST["email"])? limpiarCadena($_POST["email"]):"";

//Motos
$idmoto=isset($_POST["idmoto"])? limpiarCadena($_POST["idmoto"]):"";
$idcliente=isset($_POST["idcliente"])? limpiarCadena($_POST["idcliente"]):"";
$clasevehiculo=isset($_POST["clasevehiculo"])? limpiarCadena($_POST["clasevehiculo"]):"";
$placa=isset($_POST["placa"])? limpiarCadena($_POST["placa"]):"";
$marca=isset($_POST["marca"])? limpiarCadena($_POST["marca"]):"";
$linea=isset($_POST["linea"])? limpiarCadena($_POST["linea"]):"";
$modelo=isset($_POST["modelo"])? limpiarCadena($_POST["modelo"]):"";
$color=isset($_POST["color"])? limpiarCadena($_POST["color"]):"";
$cilindraje=isset($_POST["cilindraje"])? limpiarCadena($_POST["cilindraje"]):"";
$kilometraje=isset($_POST["kilometraje"])? limpiarCadena($_POST["kilometraje"]):"";

//Mecanico
$idmecanico=isset($_POST["idmecanico"])? limpiarCadena($_POST["idmecanico"]):"";
$nombremecanico=isset($_POST["nombremecanico"])? limpiarCadena($_POST["nombremecanico"]):"";

switch ($_GET["op"]) {
	case 'guardaryeditar':
	if (empty($idpersona)) {
		$rspta=$persona->insertarpersona($tipo_persona,$nombre,$tipo_documento,$num_documento,$direccion,$telefono,$email);
		echo $rspta ? "Datos registrados correctamente" : "No se pudo registrar los datos";
	}else{
         $rspta=$persona->editar($idpersona,$tipo_persona,$nombre,$tipo_documento,$num_documento,$direccion,$telefono,$email);
		echo $rspta ? "Datos actualizados correctamente" : "No se pudo actualizar los datos";
	}
		break;

    case 'guardaryeditarm':
    if (empty($idmoto)) {
        $rspta=$persona->insertarmoto($idcliente, $placa, $marca, $linea, $modelo, $clasevehiculo, $kilometraje, $cilindraje, $color);
        echo $rspta ? "Datos registrados correctamente" : "No se pudo registrar los datos";
        }else{
        $rspta=$persona->editarmoto($idmoto, $idcliente, $placa, $marca, $linea, $modelo, $clasevehiculo, $kilometraje, $cilindraje, $color);
        echo $rspta ? "Datos actualizados correctamente" : "No se pudo actualizar los datos";
        }
    break;

    case 'guardaryeditarme':
        if (empty($idmecanico)) {
            $rspta=$persona->insertarmecanico($tipo_persona,$nombremecanico,$tipo_documento,$num_documento,$direccion,$telefono,$email);
            echo $rspta ? "Datos registrados correctamente" : "No se pudo registrar los datos";
        }else{
             $rspta=$persona->editarmecanico($idmecanico,$tipo_persona,$nombremecanico,$tipo_documento,$num_documento,$direccion,$telefono,$email);
            echo $rspta ? "Datos actualizados correctamente" : "No se pudo actualizar los datos";
        }
            break;
	

	case 'eliminar':
		$rspta=$persona->eliminar($idpersona);
		echo $rspta ? "Datos eliminados correctamente" : "No se pudo eliminar los datos";
		break;
	
	case 'mostrar':
		$rspta=$persona->mostrar($idpersona);
		echo json_encode($rspta);
		break;

    case 'mostrarm':
        $rspta=$persona->mostrarm($idmoto);
        echo json_encode($rspta);
        break;

    case 'mostrarme':
        $rspta=$persona->mostrarme($idmecanico);
        echo json_encode($rspta);
        break;
        
    case 'listarp':
		$rspta=$persona->listarp();
		$data=Array();

		while ($reg=$rspta->fetch_object()) {
			$data[]=array(
            "0"=>'<button class="btn btn-warning btn-xs" onclick="mostrar('.$reg->idpersona.')"><i class="fa fa-pencil"></i></button>'.' '.'<button class="btn btn-danger btn-xs" onclick="eliminar('.$reg->idpersona.')"><i class="fa fa-trash"></i></button>',
            "1"=>$reg->nombre,
            "2"=>$reg->tipo_documento,
            "3"=>$reg->num_documento,
            "4"=>$reg->telefono,
            "5"=>$reg->email
              );
		}
		$results=array(
             "sEcho"=>1,//info para datatables
             "iTotalRecords"=>count($data),//enviamos el total de registros al datatable
             "iTotalDisplayRecords"=>count($data),//enviamos el total de registros a visualizar
             "aaData"=>$data); 
		echo json_encode($results);
		break;

		case 'listarmc':
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
              "4"=>$reg->modelo
          );
      }
      $results=array(
          "sEcho"=>1,//info para datatables
          "iTotalRecords"=>count($data),//enviamos el total de registros al datatable
          "iTotalDisplayRecords"=>count($data),//enviamos el total de registros a visualizar
          "aaData"=>$data);
      echo json_encode($results);
      break;

      case 'listarm':
        require_once "../modelos/Persona.php";
        $persona = new Persona();
        $rspta=$persona->listarmc();
        $data=Array();
  
        while ($reg=$rspta->fetch_object()) {
            $data[]=array(
                "0"=>'<button class="btn btn-warning btn-xs" onclick="mostrar('.$reg->idmoto.')"><i class="fa fa-pencil"></i></button>'.' '.'<button class="btn btn-danger btn-xs" onclick="eliminar('.$reg->idmoto.')"><i class="fa fa-trash"></i></button>',
                "1"=>$reg->placa,
                "2"=>$reg->marca.' / '.$reg->color.'('.$reg->cilindraje.'cc)'.' ',
                "3"=>$reg->linea,
                "4"=>$reg->modelo,
                "5"=>number_format($reg->kilometraje).' km'
            );
        }
        $results=array(
            "sEcho"=>1,//info para datatables
            "iTotalRecords"=>count($data),//enviamos el total de registros al datatable
            "iTotalDisplayRecords"=>count($data),//enviamos el total de registros a visualizar
            "aaData"=>$data);
        echo json_encode($results);
        break;

    case 'listarc':
      $rspta=$persona->listarc();
      $data=Array();

		while ($reg=$rspta->fetch_object()) {
			$data[]=array(
            "0"=>'<button class="btn btn-warning btn-xs" onclick="mostrar('.$reg->idpersona.')"><i class="fa fa-pencil"></i></button>'.' '.'<button class="btn btn-danger btn-xs" onclick="eliminar('.$reg->idpersona.')"><i class="fa fa-trash"></i></button>',
            "1"=>$reg->nombre,
            "2"=>$reg->tipo_documento,
            "3"=>$reg->num_documento,
            "4"=>$reg->telefono,
            "5"=>$reg->email
              );
		}
		$results=array(
             "sEcho"=>1,//info para datatables
             "iTotalRecords"=>count($data),//enviamos el total de registros al datatable
             "iTotalDisplayRecords"=>count($data),//enviamos el total de registros a visualizar
             "aaData"=>$data); 
		echo json_encode($results);
		break;

    case 'listarme':
        $rspta=$persona->listarmecanico();
        $data=Array();

        while ($reg=$rspta->fetch_object()) {
            $data[]=array(
                "0"=>'<button class="btn btn-warning btn-xs" onclick="mostrar('.$reg->idmecanico.')"><i class="fa fa-pencil"></i></button>'.' '.'<button class="btn btn-danger btn-xs" onclick="eliminar('.$reg->idmecanico.')"><i class="fa fa-trash"></i></button>',
                "1"=>$reg->nombremecanico,
                "2"=>$reg->tipo_documento,
                "3"=>$reg->num_documento,
                "4"=>$reg->telefono,
                "5"=>$reg->email
            );
        }
        $results=array(
            "sEcho"=>1,//info para datatables
            "iTotalRecords"=>count($data),//enviamos el total de registros al datatable
            "iTotalDisplayRecords"=>count($data),//enviamos el total de registros a visualizar
            "aaData"=>$data);
        echo json_encode($results);
        break;

        case 'selectcliente':
          require_once "../modelos/Persona.php";
          $persona = new Persona();
          $rspta=$persona->listarc();
          while ($reg = $rspta->fetch_object()) {
              echo '<option value=' . $reg->idpersona . '>' . $reg->nombre . '</option>';
          }
          break;
}


 ?>