
<html>
    <head>
        <meta charset="UTF-8">
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <title></title>
    </head>
    <body>
        <?php
        include_once './Negocio.php';
        $obj = new Negocio();
        $nroViaje = $_REQUEST["nro"];
        $cost = $_REQUEST["costo"];
        $lista = $obj->listaPasajeros($nroViaje);
        ?>
        <br>
        <p class="text-gray-dark">Lista de Pasajero en el Viaje Nro: <?=$nroViaje?>............<a href="javascript:history.go(-1)">Retornar</a></p>
        <p class="text-gray-dark">Costo del Viaje: <?=$cost?>............<a href="pagAdicion.php?nro=<?=$nroViaje?>&costo=<?=$cost?>">Adicionar Pasajeros</a></p>
    <center>
        <table class = "table table-hover">
            <thead>
            <tr class="text-white bg-black"><th>Boleto<th>Nombre<th>Asiento<th>Pago<th>Anular
            </thead>
            <?php
                foreach($lista as $fila){
                    echo "<tr><td>$fila[0]<td>$fila[1]<td>$fila[2]<td>$fila[3]";
            ?>
            <td><a href="pagAnula.php?bolnro=<?=$fila[0]?>">Del</a>
            <?php
                }
            ?>
        </table>
    </center>
    </body>
</html>
