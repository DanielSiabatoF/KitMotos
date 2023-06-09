<?php 
//incluir la conexion de base de datos
require "../config/Conexion.php";
class Persona{


	//implementamos nuestro constructor
public function __construct(){

}

//metodo insertar moto
public function insertarmoto($idcliente,
							 $placa,
							 $marca,
							 $linea,
							 $modelo,
							 $clasevehiculo,
							 $kilometraje,
							 $cilindraje,
							 $color){
	$sql="INSERT INTO motos (idcliente,
                     		placa,
                     		marca,
                     		linea,
                     		modelo,
                     		clasevehiculo,
                     		kilometraje,
                     		cilindraje,
							color) VALUES ('$idcliente',
							 '$placa',
							 '$marca',
							 '$linea',
							 '$modelo',
							 '$clasevehiculo',
							 '$kilometraje',
							 '$cilindraje',
							 '$color')";
	return ejecutarConsulta($sql);
}

public function editarmoto($idmoto, $idcliente, $placa, $marca, $linea, $modelo, $clasevehiculo, $kilometraje, $cilindraje, $color){
	$sql="UPDATE motos SET idcliente='$idcliente', placa='$placa',marca='$marca',linea='$linea',modelo='$modelo',clasevehiculo='$clasevehiculo',cilindraje='$cilindraje', color='$color'
	WHERE idmoto='$idmoto'";
	return ejecutarConsulta($sql);
}

//metodo insertar persona
	public function insertarpersona($tipo_persona,
									$nombre,
									$tipo_documento,
									$num_documento,
									$direccion,
									$telefono,
									$email){
		$sql="INSERT INTO persona (tipo_persona,nombre,tipo_documento,num_documento,direccion,telefono,email) VALUES ('$tipo_persona','$nombre','$tipo_documento','$num_documento','$direccion','$telefono','$email')";
		return ejecutarConsulta($sql);
	}

//metodo insertar persona
public function insertarmecanico($tipo_persona,
$nombremecanico,
$tipo_documento,
$num_documento,
$direccion,
$telefono,
$email){
$sql="INSERT INTO mecanico (tipo_persona,nombremecanico,tipo_documento,num_documento,direccion,telefono,email) VALUES ('$tipo_persona','$nombremecanico','$tipo_documento','$num_documento','$direccion','$telefono','$email')";
return ejecutarConsulta($sql);
}

public function editar($idpersona,$tipo_persona,$nombre,$tipo_documento,$num_documento,$direccion,$telefono,$email){
	$sql="UPDATE persona SET tipo_persona='$tipo_persona', nombre='$nombre',tipo_documento='$tipo_documento',num_documento='$num_documento',direccion='$direccion',telefono='$telefono',email='$email' 
	WHERE idpersona='$idpersona'";
	return ejecutarConsulta($sql);
}

public function editarmecanico($idpersona,$tipo_persona,$nombremecanico,$tipo_documento,$num_documento,$direccion,$telefono,$email){
	$sql="UPDATE mecanico SET tipo_persona='$tipo_persona', nombremecanico='$nombremecanico',tipo_documento='$tipo_documento',num_documento='$num_documento',direccion='$direccion',telefono='$telefono',email='$email' 
	WHERE idmecanico='$idmecanico'";
	return ejecutarConsulta($sql);
}
//funcion para eliminar datos
public function eliminar($idpersona){
	$sql="DELETE FROM persona WHERE idpersona='$idpersona'";
	return ejecutarConsulta($sql);
}

//metodo para mostrar registros
public function mostrar($idpersona){
	$sql="SELECT * FROM persona WHERE idpersona='$idpersona'";
	return ejecutarConsultaSimpleFila($sql);
}

public function mostrarme($idmecanico){
	$sql="SELECT * FROM mecanico WHERE idmecanico='$idmecanico'";
	return ejecutarConsultaSimpleFila($sql);
}

public function mostrarm($idmoto){
	$sql="SELECT * FROM motos m
	INNER JOIN persona p ON m.idcliente=p.idpersona
	WHERE m.idmoto='$idmoto'";
	return ejecutarConsultaSimpleFila($sql);
}

//listar registros
public function listarp(){
	$sql="SELECT * FROM persona WHERE tipo_persona=3";
	return ejecutarConsulta($sql);
}

public function listarc(){
	$sql="SELECT * FROM persona WHERE tipo_persona=2";
	return ejecutarConsulta($sql);
}

public function listarmc(){
		$sql="SELECT * FROM venta v
    			INNER JOIN motos m ON v.idmoto=v.idmoto
				INNER JOIN persona p ON m.idcliente=p.idpersona
				INNER JOIN mecanico me ON v.idmecanico=me.idmecanico
				GROUP BY m.placa";
		return ejecutarConsulta($sql);
	}

	public function listarmecanico(){
		$sql="SELECT * FROM mecanico";
		return ejecutarConsulta($sql);
	}

	public function listarm(){
		$sql="SELECT * FROM persona WHERE tipo_persona=1";
		return ejecutarConsulta($sql);
	}
}

 ?>
