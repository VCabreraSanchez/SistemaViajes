
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
        $code = $_REQUEST["cod"];
        $nom = $_REQUEST["nom"];
        $lista = $obj->listaViajesxChofer($code);
        ?>
        <br>
        <p class="text-gray-dark">Viajes Realizados por:</p>
        <p class="text-gray-dark">Chofer : <?=$nom?></p>
    <center>
        <table class = "table table-hover">
            <thead>
            <tr class="text-white bg-black"><th>Viaje<th>Ruta<th>Fecha<th>Costo
            </thead>
            <?php
                foreach($lista as $fila){
                    echo "<tr><td>$fila[0]<td>$fila[1]<td>$fila[2]<td>$fila[3]";
                }
            ?>
        </table>
    </center>
    <a href="javascript:history.go(-1)">Retorno</a>
    </body>
</html>
