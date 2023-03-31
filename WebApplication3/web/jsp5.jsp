<%-- 
    Document   : jsp5
    Created on : 30 mar 2023, 13:36:24
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form id="form5" method="POST" action="ListaAlumno">
            <input type="text" name="valor" id="valor" onclick="16" onblur="holaMundo( 'aa' );" />
            <input type="submit" name="enviar" value="Enviar" />
        </form>
        <script>
            <!--
            //alert( 'hola mundo' );
            //Console.log( 'hola mundo desde consola' );
            var x = 0;
            //alert (x++);
            //alert (x);
            x = x + 16;
            function holaMundo( variable )
            {
                document.getElementById("valor").value = "" + x;
                alert(document.getElementById("valor").value);
                alert(variable);
            }
            -->
        </script>
    </body>
</html>
