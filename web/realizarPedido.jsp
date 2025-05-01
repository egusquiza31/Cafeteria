<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="modelo.Pedidos" %>
<%
    request.setCharacterEncoding("UTF-8");
    String cliente = request.getParameter("cliente");
    String producto = request.getParameter("producto");
    int cantidad = Integer.parseInt(request.getParameter("cantidad"));

    // Guardar en BD
    if ("guardar".equals(request.getParameter("accion"))) {
        Pedidos.guardarPedido(cliente, producto, cantidad);
        response.sendRedirect("confirmacion.jsp"); // Redirigir después de guardar
    }
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resumen del pedido</title>
    <link rel="stylesheet" type="text/css" href="resumen.css">
</head>
<body>
    <h2>Resumen del pedido</h2>
    <form method="post">
        <input type="hidden" name="cliente" value="<%= cliente %>">
        <input type="hidden" name="producto" value="<%= producto %>">
        <input type="hidden" name="cantidad" value="<%= cantidad %>">
        
        <p>Cliente: <%= cliente %></p>
        <p>Producto: <%= producto %></p>
        <p>Cantidad: <%= cantidad %></p>

        <button type="submit" name="accion" value="guardar">Guardar Pedido</button>
        <a href="confirmacion.jsp">Confirmar</a>
    </form>
</body>
</html>