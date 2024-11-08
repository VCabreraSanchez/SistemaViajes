<?php
include_once './Negocio.php';
$obj = new Negocio();
$boleto = $_REQUEST["bolnro"];
$obj->anularPasajero($boleto);
header("Location: " . $_SERVER['HTTP_REFERER']);
?>