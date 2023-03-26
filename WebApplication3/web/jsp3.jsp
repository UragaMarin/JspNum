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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="p-3 mb-2 bg-dark text-white">
        <h1>Registro</h1>
        </div>
        <%
            String nombre = null;
            String edad = null;
            String contraseña = null;
            String correo = null;
            String genero = null;
            String fecha = null;
            String slider = null;
            String url = null;
            String guardar = null;
            String id = null;
            String editar = null;
            String accion = "guardar";
            String actualizar = "guardar";
            Datos datos = null;
            Integer idx = null;
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
            edad = request.getParameter( "edad" );
            contraseña = request.getParameter( "contraseña" );
            genero = request.getParameter( "genero" );
            fecha = request.getParameter( "fecha" );
            slider = request.getParameter( "slider" );
            url = request.getParameter( "url" );
            guardar = request.getParameter( "guardar" );
            id = request.getParameter( "id" );
            editar = request.getParameter( "editar" );
            actualizar = request.getParameter( "actualizar" );
            
            if( "Submit".equals( editar ) )
            {
                idx = Integer.parseInt( id );
                if( idx < lista.size() )
                {
                    datos = lista.get( idx );
                }
                accion = "actualizar";
            }
            
            if( "Submit".equals( guardar ) || "Submit".equals( actualizar ) )
            {
                if( "Submit".equals( guardar ) )
                {
                    datos = new Datos( );
                }
                else
                {
                    datos = lista.get( Integer.parseInt( id ) );
                }
                datos.setNombre(nombre);
                datos.setEdad(Integer.parseInt(edad ) );
                datos.setContraseña(contraseña);
                datos.setCorreo(correo);
                datos.setGenero(genero);
                datos.setFecha(fecha);
                datos.setSlider(slider);
                datos.setUrl(url);
                if( "Submit".equals( guardar ) )
                {
                    lista.add( datos );
                }
        %>
                <h1>EXITO!</h1>
                <script>
                    console.log("Exito");
                </script>
                <a href="jsp2.jsp">Ir a jsp2 </a>
        <%
            }
            if( datos == null )
            {
                datos = new Datos( );
                datos.setNombre( "" );
                datos.setEdad( 0 );
                datos.setContraseña( "" );
                datos.setCorreo( "" );
                datos.setGenero("" );
                datos.setFecha( "" );
                datos.setSlider("" );
                datos.setUrl("" );
            }
            if( !"Submit".equals( guardar ) && !"Submit".equals( actualizar ) )
            {
        %>
        <div class="container">
            <form id="form1">
                <table border="1" class="table">
                    <tr>
                    <td>Nombre</td>
                    <td><input id="nombre" name="nombre" value="<%=datos.getNombre()%>" type="text"/></td>

                </tr>
                <tr>
                    <td>Calificación</td>
                    <td><input id="edad" name="edad" value="<%=datos.getEdad()%>" type="number"/></td>
                </tr>
                <tr>
                    <td>Contraseña</td>
                    <td><input id="contraseña" name="contraseña" value="<%=datos.getContraseña()%>" type="password"/></td>
                </tr>
                <tr>
                    <td>Genero</td>
                    <td><input id="sexo" name="sexo" value="<%=datos.getGenero()%>" type="radio"/>Masculino
                    <input id="sexo" name="sexo" value="<%=datos.getGenero()%>" type="radio"/>Femenino</td>
                </tr>
                <tr>
                    <td>Correo</td>
                    <td><input id="correo" name="correo" value="<%=datos.getCorreo()%>" type="email"/></td>
                </tr>
                <tr>
                    <td>Fecha de nacimiento</td>
                    <td><input id="fecha" name="fecha" value="<%=datos.getFecha()%>" type="date"/></td>
                </tr>
                <tr>
                    <td>Slider</td>
                    <td><input type="range" name="price" id="price" min="50000" max="500000" step="100" value="250000"></td>
                </tr>
                <tr>
                    <td>URL personal</td>
                    <td><input id="insta" name="insta" value="<%=datos.getUrl()%>" type="url"/></td>
        <%
                            if( "Submit".equals( editar ) )
                            {
        %>
                                <input type="hidden" name="id" id="id" value="<%=id%>" />
        <%
                            }
        %>
                </tr>
                <tr >
                    <td colspan="2">
                        <input type="submit" id="Guardar" name="<%=accion%>" />
                    </td>
                </tr>
                </table>
            </form>
        </div>
        <%
            }
        %>
    </body>
</html>
