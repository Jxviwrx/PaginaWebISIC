<%-- 
    Document   : añadirUsuario
    Created on : 21 nov 2024, 7:42:58 a.m.
    Author     : jf398
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir Usuarios</title>
        <link rel="stylesheet" href="styleAñadir.css">
         <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
         <script>
            import java.sql.Connection;
            import java.sql.PreparedStatement;
            import java.sql.SQLException;

public class Usuario {

    public static void registrarUsuario(String nombre,String contraseña, String rol, String email) {
        Connection conexion = ConexionBD.getConexion();
        
        // La sentencia SQL para insertar un nuevo usuario en la base de datos
        String sql = "INSERT INTO usuarios (nombre_usuario, contraseña, rol, correo, activo) VALUES ('" 
            + nombre_usuario + "', '" 
            + contraseña + "', '" 
            + rol + "', '" 
            + correo + "' , '"
            + activo + "', 1)";

try {
    Statement stmt = conexion.createStatement();
    stmt.executeUpdate(sql); // Ejecuta la sentencia SQL
    System.out.println("Usuario registrado exitosamente.");
} catch (SQLException ex) {
    System.out.println("Error al registrar el usuario: " + ex.getMessage());
}

    }
}

         </script>
    </head>
    <body>
        <body>
  <div class="opciones-container">
    <h2>Añadir Usuario</h2>
    <form action="http://localhost:8080/ISICWS/webresources/Usuarios/guardar" method="post">
      <div class="AggAñadir">
        <label for="usuario">Nombre de Usuario</label>
        <input type="text" id="nombre_usuario" name="nombre_usuario" placeholder="Escribe el nombre de usuario" required>
      </div>

      <div class="AggAñadir">
        <label for="contraseña">Contraseña</label>
        <input type="password" id="contraseña" name="contraseña" placeholder="Escribe la contraseña" required>
      </div>

      <div class="AggAñadir">
        <label for="rol">Rol</label>
        <input type="text" id="rol" name="rol" placeholder="Escribe tu rol" required>
      </div>

      <div class="AggAñadir">
        <label for="correo">Correo</label>
        <input type="email" id="correo" name="correo" placeholder="Escribe tu correo" required>
      </div>
      
      <div class="AggAñadir">
        <label for="correo">Activo</label>
        <input type="hidden" id="activo" name="activo" value="1">
      </div>

      <div class="AggAñadir">
        <button type="submit">Añadir Usuario</button>
      </div>
    </form>

    <div class="AggAñadir">
      <button type="button" onclick="window.location.href='opciones.html';">Volver</button>
    </div>
  </div>
</body>
    </body>
</html>
