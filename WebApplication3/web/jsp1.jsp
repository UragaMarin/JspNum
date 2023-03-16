<%-- 
    Document   : jsp1
    Created on : 10 mar 2023, 11:19:48
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
        <div class="p-3 mb-2 bg-dark text-white">
        <h1>Numeros al azar</h1>
        </div>
        <div class="container">
            <h2>Numeros</h2>
        </div>
                <%
                    if(request.getParameter("numero") != null) {
                int arreglo[] = new int[Integer.parseInt(request.getParameter("numero"))];
                for (int i = 0; i < Integer.parseInt(request.getParameter("numero")); i++) {
                    arreglo[i]= (int)((Math.random())*200);
                    if(arreglo[i] > 50) {
                %>
                <div class="container">
                <h1><%=arreglo[i] %> es mayor a 50</h1>
                </div>
                <%
                    }
                    else {
                %>
                <div class="container">
                <h1><%=arreglo[i] %> es menor a 50</h1>
                </div>
                <%
                            }
                        }
                    }
                    else {
                %>
                <div class="container">
                <h1>Los numeros apareceran aqui.</h1>
                </div>
                <%
                          }
                %>
                <br>
                <div class="container">
                <a href="jsp2.jsp">Ir a JSP2</a>
                </div>
    </body>
</html>
