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
            Almacen item = (Almacen) request.getAttribute("item");
        %>
        <h1>Nuevo Producto</h1>
        <form action="Principal?op=guardar" method="post">
            Id: <input type="number" name="id" value="<%= item.getId() %>" size="2" pattern="[1-9] {1} [0-9]*"/>
            <input type="hidden" name="tipo" value="-1" required/>
            <br>
            Producto: <input type="text" name="producto" value="<%= item.getProducto() %>" required/>
            <br>
            Precio: <input type="number" name="precio" value="<%= item.getPrecio() %>" size="2" pattern="[1-9] {1} [0-9]*"/>
            <input type="hidden" name="tipo" value="-1" required/>
            <br>
            Cantidad: <input type="number" name="cantidad" value="<%= item.getCantidad() %>" size="2" pattern="[1-9] {1} [0-9]*"/>
            <input type="hidden" name="tipo" value="-1" required/>
            <br>
            Estado: <input type="radio" name="estado" value="1" <%= (item.getEstado() == 1) ? "checked":"" %> required/> Disponible
            <input type="radio" name="estado" value="2" <%= (item.getEstado() == 2) ? "checked":"" %> required=""/> No disponible
            <br>
            <input type="submit" value="Enviar" />
        </form>
    </body>
</html>
