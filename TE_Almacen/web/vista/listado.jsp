<%@page import="com.emergentes.modelo.Almacen" %>
<%@page import="com.emergentes.modelo.AlmacenPro" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            AlmacenPro lista = (AlmacenPro) session.getAttribute("gestor");
        %>
        <h1>Productos</h1>
        <p><a href="../Principal?op=nuevo">Nuevo Producto</a></p>
        <%
            if (lista.getLibros().size() > 0) {
        %>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Producto</th>
                <th>Precio</th>
                <th>Cantidad</th>
                <th>Estado</th>
                <th>Modificar</th>
                <th>Eliminar</th>
            </tr>
        <%
            for(Almacen item : lista.getLibros()) {
        %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getProducto()%></td>
                <td><%= item.getPrecio()%></td>
                <td><%= item.getCantidad()%></td>
                <td><%= item.getEstado()%></td>
                <td><a href="../Principal?op=editar&id=<%= item.getId()%>">Modificar</a></td>
                <td><a href="../Principal?op=eliminar&id=<%= item.getId()%>">Eliminar</a></td>
            </tr>
        <%
            }
        %>
        </table>
        <%
        }
            else{
                out.println("<p>No existen registros");;
            }
        %>
    </body>
</html>
