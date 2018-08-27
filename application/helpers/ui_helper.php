<?php

function get_id_youtube($url){
	parse_str( parse_url( $url, PHP_URL_QUERY ), $ar );
	return $ar['v'];
}
function img_ver($base,$mod,$image){
	$image = trim($image);
	return $base.'_files/'.$mod.'/'.substr($image, 0, 2).'/'.substr($image, 2, 2).'/'.$image;
}
function archivo_ruta($image){
	$image = trim($image);
	return './_files/'.substr($image, 0, 2).'/'.substr($image, 2, 2).'/'.$image;
}
function array_meses($mes){
	$meses = array("","Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
	return $meses[$mes];
}
