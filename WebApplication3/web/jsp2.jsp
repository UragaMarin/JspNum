<%-- 
    Document   : jsp2
    Created on : 14 mar 2023, 13:14:13
    Author     : alumno
--%>

<%@page import="org.italibi.Datos"%>
<%@page import="org.italibi.Negocio"%>
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
        <h1>Mi jsp2!</h1>
        <%
            Negocio negocio = new Negocio();
            int numero = (int)(Math.random() * 1000);
            String cad = String.format("?numero=%d" , numero);
        %>
        <div class="container">
            <a href="jsp1.jsp<%= cad%>">Ir a jsp2</a>
        </div>
        <div class="container">
            <a href="jsp1.jsp">Ir a jsp2 v1</a>
        </div>
        <div class="container">
            <table border="1">
                <tr>
                    <td>Nombre</td>
                    <td>Cal</td>
                </tr>
                <%
                    if(negocio.getLista() != null && negocio.getLista().isEmpty()){
                        for(Datos datos : negocio.getLista()){
                %>
                            <tr>
                                <td><%= datos.getNombre() %></td>
                                <td><%= datos.getCalf() %></td>
                            </tr>
                <%
                        }
                    }
                %>
            </table>
        </div>
    </body>
</html>
