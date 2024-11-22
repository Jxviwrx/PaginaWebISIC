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
        <title>Añadir Usuario</title>
        <link rel="stylesheet" href="styleAñadir.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            $(document).ready(function() {
                $("#formularioUsuario").on("submit", function(event) {
                    event.preventDefault(); 

                    var formData = $(this).serialize();

                    $.ajax({
                        url: "http://localhost:8080/ISICWS/webresources/Usuarios/guardar", 
                        method: "POST",
                        data: formData,
                        success: function(response) {
                            $("#mensaje").html("<p style='color:green;'>Alumno registrado exitosamente.</p>");
                            
                            $("#formularioUsuario")[0].reset();
                        },
                        error: function(xhr, status, error) {
                            $("#mensaje").html("<p style='color:red;'>Hubo un error al registrar el usuario. Inténtalo de nuevo.</p>");
                        }
                    });
                });
            });
        </script>
    </head>
    <body>
        <div class="opciones-container">
            <h2>Añadir Usuario</h2>
            
            <div id="mensaje"></div>
            
            <form id="formularioUsuario">
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
                    <label for="activo">Activo</label>
                    <input type="hidden" id="activo" name="activo" value="1">
                </div>

                <div class="AggAñadir">
                    <button type="submit">Añadir Usuario</button>
                </div>
            </form>

            <div class="AggAñadir">
                <button type="button" onclick="window.location.href='opciones.jsp';">Volver</button>
            </div>
        </div>
    </body>
</html>
