
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
        $lista = $obj->listaChoferes();
        ?>
    <center>
        <h2 class="text-blue">Lista de Choferes</h2>
        <table class = "table table-hover">
            <tr class="text-white bg-black"><th>Codigo<th>Nombre<th>Fec. Ingreso<th>Categoria<th>Foto<th>Ver
            <?php
                foreach($lista as $fila){
                    echo "<tr><td>$fila[0]<td>$fila[1]<td>$fila[2]<td>$fila[3]";
            ?>
                <td><img src="fotos/<?=$fila[0]?>.jpg" height="90" width="90" onerror="src='fotos/sin_foto.jpg'"/>
                <td><a href="pagViajeChofer.php?cod=<?=$fila[0]?>&nom=<?=$fila[1]?>">Viaje</a>
            <?php
                }
            ?>
                    
        </table>
    </center>
    </body>
</html>
