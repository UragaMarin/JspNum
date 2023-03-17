<%-- 
    Document   : jsp3
    Created on : 16 mar 2023, 17:50:52
    Author     : ItaPi
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.italibi.Datos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nombre = null;
            String calif = null;
            String guardar = null;
            Datos datos = null;
            List<Datos>lista = null;
            session = request.getSession( true );
            if( session != null )
            {
                if( session.getAttribute("lista") == null )
                {
                    session.setAttribute("lista", new ArrayList<Datos>());
                }
                lista = (List)session.getAttribute("lista");
            }
            nombre = request.getParameter( "nombre" );
            calif = request.getParameter( "calif" );
            guardar = request.getParameter( "guardar" );
            if( "Submit".equals( guardar ) )
            {
                datos = new Datos( );
                datos.setNombre(nombre);
                datos.setCalf( Float.parseFloat( calif ) ); 
                lista.add( datos );
        %>
        <h1>EXITO!</h1>
        <script>
               alert('Exito');
               console.log("Exito");
        </script>
        <a href="jsp2.jsp">Ir a jsp2 </a>
        <%
            }
            if( !"Submit".equals( guardar ) )
            {
        %>  
        <form id="form1">
            <table border="1">
                <tr>
                    <td>Nombre</td>
                    <td><input id="nombre" name="nombre" type="text"/></td>

                </tr>
                <tr>
                    <td>Calificación</td>
                    <td><input id="calif" name="calif" type="number"/></td>
                </tr>
                <tr >
                    <td colspan="2">
                        <input type="submit" id="Guardar" name="guardar" />
                    </td>
                </tr>
            </table>
        </form>
        <%
            }
        %>
    </body>
</html>
