
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
        $lista = $obj->listaRutas();
        ?>
    <center>
        <h2 class="text-blue">Lista de Rutas</h2>
        <table class = "table table-hover">
            <tr class="text-white bg-black"><th>RutCode<th>Ruta<th>Imagen<th>ver
            <?php
                foreach($lista as $fila){
                    echo "<tr><td>$fila[0]<td>$fila[1]";
            ?>
                <td><img src="turismo/<?=$fila[1]?>.jpg" height="90" width="150">
                <td><a href="pagViaje.php?cod=<?=$fila[0]?>&nom=<?=$fila[1]?>">Viaje</a>
            <?php
                }
            ?>
                    
        </table>
    </center>
    </body>
</html>
