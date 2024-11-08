
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
        $cod = $_REQUEST["cod"];
        $nom = $_REQUEST["nom"];
        $lista = $obj->listaViajes($cod);
        ?>
    <center>
        <h2 class="text-blue">Ruta: <?=$nom?></h2>
        <div>
            <img src="turismo/<?=$nom?>.jpg" height="200" width="260">
        </div>
        <br>
        <table class = "table table-hover">
            <thead>
            <tr class="text-white bg-black"><th>Viaje<th>Fecha<th>Hora<th>Costo<th>Pasajeros
            </thead>
            <?php
                foreach($lista as $fila){
                    echo "<tr><td>$fila[0]<td>$fila[1]<td>$fila[2]<td>$fila[3]";
            ?>
            <td><a href="pagPasajero.php?nro=<?=$fila[0]?>&costo=<?=$fila[3]?>">ver</a>
            <?php
                }
            ?>
        </table>
    </center>
    </body>
</html>
