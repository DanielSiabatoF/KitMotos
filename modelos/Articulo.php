<?php 
//incluir la conexion de base de datos
require "../config/Conexion.php";
class Articulo{


	//implementamos nuestro constructor
public function __construct(){

}

//metodo insertar regiustro
public function insertar($idcategoria,$codigo,$nombre,$stock,$descripcion,$imagen,$money){
	$sql="INSERT INTO articulo (idcategoria,codigo,nombre,stock,descripcion,imagen,condicion,precio_venta)
	 VALUES ('$idcategoria','$codigo','$nombre','$stock','$descripcion','$imagen','1',$money)";
	return ejecutarConsulta($sql);
}

public function editar($idarticulo,$idcategoria,$codigo,$nombre,$stock,$descripcion,$imagen,$money){
	$sql="UPDATE articulo SET idcategoria='$idcategoria',codigo='$codigo', nombre='$nombre',stock='$stock',descripcion='$descripcion',imagen='$imagen' ,precio_venta=$money
	WHERE idarticulo='$idarticulo'";
	return ejecutarConsulta($sql);
}
public function desactivar($idarticulo){
	$sql="UPDATE articulo SET condicion='0' WHERE idarticulo='$idarticulo'";
	return ejecutarConsulta($sql);
}
public function activar($idarticulo){
	$sql="UPDATE articulo SET condicion='1' WHERE idarticulo='$idarticulo'";
	return ejecutarConsulta($sql);
}

//metodo para mostrar registros
public function mostrar($idarticulo){
	$sql="SELECT * FROM articulo WHERE idarticulo='$idarticulo'";
	return ejecutarConsultaSimpleFila($sql);
}

//listar registros 
public function listar(){
	$sql="SELECT a.idarticulo,a.idcategoria,c.nombre as categoria,a.codigo, a.nombre,a.stock,a.precio_venta,a.imagen,a.condicion,a.descripcion FROM articulo a INNER JOIN Categoria c ON a.idcategoria=c.idcategoria";
	return ejecutarConsulta($sql);
}

//listar registros activos
public function listarActivos(){
	$sql="SELECT a.idarticulo,a.idcategoria,c.nombre as categoria,a.codigo, a.nombre,a.stock,a.descripcion,a.imagen,a.condicion FROM articulo a INNER JOIN Categoria c ON a.idcategoria=c.idcategoria WHERE a.condicion='1'";
	return ejecutarConsulta($sql);
}

//implementar un metodo para listar los activos, su ultimo precio y el stock(vamos a unir con el ultimo registro de la tabla detalle_ingreso)
public function listarActivosVenta(){
	$sql="SELECT a.idarticulo,a.idcategoria,c.nombre as categoria,a.codigo, a.nombre,a.stock, a.precio_venta,a.descripcion,a.imagen,a.condicion FROM articulo a INNER JOIN Categoria c ON a.idcategoria=c.idcategoria WHERE a.condicion='1' AND a.stock!='0'";
	return ejecutarConsulta($sql);
}
}
 ?>
