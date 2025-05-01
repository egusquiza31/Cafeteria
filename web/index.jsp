<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Pedir café</title>
    <link rel="stylesheet" type="text/css" href="Stylesindex.css">
    <meta charset="UTF-8">
</head>
<body>
<h2>Formulario de Pedido</h2>
<form action="realizarPedido.jsp" method="post" accept-charset="UTF-8">
    Nombre del cliente: <input type="text" name="cliente" required><br>
    Producto:
    <select name="producto">
        <option value="Café">Café</option>
        <option value="Capuchino">Capuchino</option>
        <option value="Latte">Latte</option>
    </select><br>
    Cantidad: <input type="number" name="cantidad" min="1" required><br>
    <input type="submit" value="Realizar pedido">
</form>
</body>
</html>
