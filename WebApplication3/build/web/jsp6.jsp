<%-- 
    Document   : jsp6
    Created on : 31 mar 2023, 12:56:27
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <h1>Importes</h1>
        <div class="container">
            <form id="form6">
                <table border="1" class="table">
                    <tr>
                        <td>
                            <h2>Nombre</h2>
                        </td>
                        <td>
                            <input type="text" name="nombre" id="nombre">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2>Importe</h2>
                        </td>
                        <td>
                            <input type="number" name="importe" id="importe" onblur="calcularTOTAL( )">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h2>IVA</h2>
                        </td>
                        <td>
                            <input type="number" name="iva" id="iva" onblur="calcularTOTAL( )">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        
        <script>
            <!--
            function calcularTOTAL( )
            {
                var importe = document.getElementById("importe").value;
                var iva = document.getElementById("iva").value;
                var tot = 0;
                if( importe === '' || iva === '' )
                {
                    return;
                } else {
                    tot = importe * (1 + (iva / 100 ) );
                    alert("Total " + tot);
                }
            }
            -->
        </script>
        
    </body>
</html>
