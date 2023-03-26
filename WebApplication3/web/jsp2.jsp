<%-- 
    Document   : jsp2
    Created on : 14 mar 2023, 13:14:13
    Author     : alumno
--%>

<%@page import="java.util.List"%>
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
        <div class="p-3 mb-2 bg-dark text-white">
        <h1>Datos</h1>
        </div>
        <%
            int i = 0;
            List<Datos> lista = null;
            String id = null;
            String borrar = null;
            session = request.getSession( true );
            
            if( session != null )
            {
                if( session.getAttribute("lista") != null )
                {
                    lista = (List)session.getAttribute( "lista" );
                }
            }
            id = request.getParameter("id");
            borrar = request.getParameter("borrar");
            if( "Submit".equals( borrar ) )
            {
                lista.remove( Integer.parseInt(id) );
            }
        %>
        <div class="container">
            <a href="jsp1.jsp">Regresar al JSP1</a>
            <br>
            <a href="jsp3.jsp">Ir a JSP3</a>
        </div>
            <br>
        <div class="container">
            <h1>Tabla</h1>
        </div>
        <div class="container">
            <table border="1" class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Id</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Edad</th>
                        <th scope="col">Contraseña</th>
                        <th scope="col">Correo</th>
                        <th scope="col">Genero</th>
                        <th scope="col">Fecha</th>
                        <th scope="col">Slider</th>
                        <th scope="col">URL</th>
                        <th scope="col">Acciones</th>
                    </tr>
                </thead>
                <tbody>
            <%
              if( lista != null && !lista.isEmpty() )
              {
                for( Datos datos : lista)
                {
            %>
            <tr>
                <th scope="row"><%=i + 1%></th>
                <td><%=i%></td>
                <td><%=datos.getNombre()%></td>
                <td><%=datos.getEdad()%></td>
                <td><%=datos.getContraseña()%></td>
                <td><%=datos.getCorreo()%></td>
                <td><%=datos.getGenero()%></td>
                <td><%=datos.getFecha()%></td>
                <td><%=datos.getSlider()%></td>
                <td><%=datos.getUrl()%></td>
                <td>
                    <a href="jsp2.jsp?id=<%=i%>&borrar=Submit">Borrar</a> 
                    <a href="jsp3.jsp?id=<%=i++%>&editar=Submit">Editar</a> 
                </td>
            </tr>
            <%
                }
              }
            %>
                </tbody>
            </table>
        </div>
    </body>
</html>
