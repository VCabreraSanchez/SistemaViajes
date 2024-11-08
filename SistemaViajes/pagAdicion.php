
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
        ?>
        <h2>Registro de Pasajero</h2>
        <form method="post">
            <table class="table table-striped">
                <tr><td>Nombre <td><input name="nombre" pattern="[a-zA-Z\s]+" title="Ingresar solo texto"  required>
                <tr><td>Asiento <td><select name="cbasiento">
                            <option>1</option>
                            <?php
                            for($i=1;$i<=40;$i++){
                                echo '<option>'.$i.'</option>';
                            }
                            ?>
                        </select>
                <tr><td>Tipos de Pasajero <td>
                        <input type="radio" id="tipo" name="tipo" value="N" onchange="CalcularPago(this.value)">Niño 
                        <input type="radio" id="tipo" name="tipo" value="E" onchange="CalcularPago(this.value)">Estudiante 
                        <input type="radio" id="tipo" name="tipo" value="A" onchange="CalcularPago(this.value)">Adulto 
                <tr><td>Pago del viaje <td><input name="pago" id="pago" readonly>
                <tr><td><input type="submit" name="envia"><td><button onclick="location.reload()">Restablecer</button>
            </table>
        </form>
        <script>
            function CalcularPago(tipo){
                switch(tipo){
                    case "N": desc = 0.5*<?=$cost?>;break;
                    case "E": desc = 0.3*<?=$cost?>;break;
                    case "A": desc = 0;break;
                }
                costo = <?=$cost?> - desc;
                document.getElementById("pago").value = costo;
            }
            
        </script>
        <?php
            if(isset($_REQUEST["envia"])!=null){
                $obj->adicionPasajero($nroViaje, $_REQUEST["nombre"], $_REQUEST["cbasiento"], $_REQUEST["tipo"], $_REQUEST["pago"]);
                $url = "http://localhost/TrabajoNro5/pagPasajero.php?nro=".urlencode($nroViaje)."&costo=". urldecode($cost);
                header('Location: ' . $url);
            }
        ?>
    </body>
</html>
