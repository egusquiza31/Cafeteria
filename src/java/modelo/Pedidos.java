package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Pedidos {
    public static void guardarPedido(String cliente, String producto, int cantidad) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/cafeteria?useSSL=false", "root", "ajugardota2");

            String sql = "INSERT INTO pedidos (cliente, producto, cantidad) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cliente);
            ps.setString(2, producto);
            ps.setInt(3, cantidad);
            ps.executeUpdate();

            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
