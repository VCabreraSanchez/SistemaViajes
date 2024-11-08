<?php
include_once './Conexion.php';
class Negocio {
    
    function listaRutas(){
        $obj = new Conexion();
        $sql = "select rutcod, rutnom from ruta";
        $res = mysqli_query($obj->conecta(), $sql) or die(mysqli_error($obj->desconecta()));
        $vec = Array();
        while($f = mysqli_fetch_array($res)){
            $vec[] = $f;
        }
        return $vec;
    }
    function listaViajes($code){
        $obj = new Conexion();
        $sql = "select vianro, viafch, viahrs, cosvia from viaje where rutcod='$code'";
        $res = mysqli_query($obj->conecta(), $sql) or die(mysqli_error($obj->desconecta()));
        $vec = Array();
        while($f = mysqli_fetch_array($res)){
            $vec[] = $f;
        }
        return $vec;
    }
    function listaPasajeros($nroViaje){
        $obj = new Conexion();
        $sql = "select bolnro, nom_pas, nro_asi, pago from pasajeros where vianro='$nroViaje'";
        $res = mysqli_query($obj->conecta(), $sql) or die(mysqli_error($obj->desconecta()));
        $vec = Array();
        while($f = mysqli_fetch_array($res)){
            $vec[] = $f;
        }
        return $vec;
    }
    function anularPasajero($boleto){
        $obj = new Conexion();
        $sql = "delete from pasajeros where bolnro='$boleto'";
        $res = mysqli_query($obj->conecta(), $sql) or die(mysqli_error($obj->desconecta()));
    }
    function adicionPasajero($vianro, $nom_pas, $nro_asi, $tipo, $pago){
        $obj = new Conexion();
        $sql1 = "select bolnro, nom_pas, nro_asi, pago from pasajeros";
        $res2 = mysqli_query($obj->conecta(), $sql1) or die(mysqli_error($obj->desconecta()));
        $vec1 = Array();
        while($f2 = mysqli_fetch_array($res2)){
            $vec1[] = $f2;
        }
        foreach($vec1 as $fila){
            $ultbol = $fila[0];
        }
        $bol = intval($ultbol)+1;
        $boleto = sprintf("%06d",$bol);
        $sql = "insert into pasajeros values('$boleto','$vianro','$nom_pas',$nro_asi,'$tipo',$pago);";
        $res = mysqli_query($obj->conecta(),$sql) or die(mysqli_error($obj->desconecta()));
        if($res)
            echo "grabacion ok";
        else
            echo "error ";
    }
    function listaChoferes(){
        $obj = new Conexion();
        $sql = "select idcod, chonom, chofin, chocat from chofer";
        $res = mysqli_query($obj->conecta(), $sql) or die(mysqli_error($obj->desconecta()));
        $vec = Array();
        while($f = mysqli_fetch_array($res)){
            $vec[] = $f;
        }
        return $vec;
    }
    function listaViajesxChofer($code){
        $obj = new Conexion();
        $sql = "select vianro, rutnom, viafch, cosvia from chofer c join viaje v on c.IDCOD = v.IDCOD join ruta r on r.RUTCOD = v.RUTCOD where c.IDCOD = '$code'";
        $res = mysqli_query($obj->conecta(), $sql) or die(mysqli_error($obj->desconecta()));
        $vec = Array();
        while($f = mysqli_fetch_array($res)){
            $vec[] = $f;
        }
        return $vec;
    }
    
}
