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
        <%
            int x = Integer.parseInt(request.getParameter("numero"));
            if (x > 0){
                for (int i = 1; i <= x; i++) {
                    int y = (int)((Math.random() * 100));
                    if(y < 50){
        %>
                    <div class="container">
                    <h1>Es menor a 50</h1>
                    </div>
        <%
                    }
                    else
                    {
        %>
                        <div class="container">
                        <h1>Es mayor o igual a 50</h1>
                        </div>
        <%
                    }
        %>
                    <div class="container">
                    <h1>El valor es <%= y %></h1>
                    </div>
        <%
                }
            }
            else
            {
        %>
                <div class="container">
                <h1>Es un numero es invalido</h1>
                </div>
        <%
            }
        %>
        <div class="container">
            <h1>El numero es <%= x %></h1>
        </div>
    </body>
</html>
