<%-- 
    Document   : añadirAlumno
    Created on : 21 nov 2024, 10:11:16 p.m.
    Author     : jf398
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir Alumno</title>
        <link rel="stylesheet" href="styleAñadir.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            $(document).ready(function() {
                $("#formularioAlumno").on("submit", function(event) {
                    event.preventDefault(); 

                    var formData = $(this).serialize();
                    console.log(formData); // Para depurar y ver qué datos se están enviando

                    $.ajax({
                        url: "http://localhost:8080/ISICWS/webresources/Alumnos/guardar", 
                        method: "POST",
                        data: formData,
                        success: function(response) {
                            $("#mensaje").html("<p style='color:green;'>Alumno registrado exitosamente.</p>");
                            $("#formularioAlumno")[0].reset();
                        },
                        error: function(xhr, status, error) {
                            console.log("Status: " + status);
                            console.log("Error: " + error);
                            console.log("Response Text: " + xhr.responseText);
                            $("#mensaje").html("<p style='color:red;'>Hubo un error al registrar el alumno. Inténtalo de nuevo.</p>");
                        }
                    });
                });
            });
        </script>
    </head>
    <body>
        <div class="opciones-container">
            <h2>Añadir Alumno</h2>
            <div id="mensaje"></div>

            <form id="formularioAlumno">
                <div class="AggAñadir">
                    <label for="nombre">Nombre de Alumno</label>
                    <input type="text" id="nombre" name="nombre" placeholder="Escribe el nombre del Alumno" required>
                </div>

                <div class="AggAñadir">
                    <label for="apellido">Apellido</label>
                    <input type="text" id="apellido" name="apellido" placeholder="Escribe el apellido" required>
                </div>

                <div class="AggAñadir">
                    <label for="matricula">Matrícula</label>
                    <input type="text" id="matricula" name="matricula" placeholder="Escribe la matrícula" required>
                </div>

                <div class="AggAñadir">
                    <label for="fecha_nacimiento">Fecha de Nacimiento</label>
                    <input type="date" id="fecha_nacimiento" name="fecha_nacimiento" placeholder="Escribe la fecha de nacimiento" required>
                </div>
                
                <div class="AggAñadir">
                    <label for="correo">Correo</label>
                    <input type="email" id="correo" name="correo" placeholder="Escribe el correo" required>
                </div>
                
                <div class="AggAñadir">
                    <label for="telefono">Teléfono</label> 
                    <input type="text" id="telefono" name="telefono" placeholder="Escribe el teléfono" required>
                </div>
                
                <div class="AggAñadir">
                    <label for="direccion">Dirección</label>
                    <input type="text" id="direccion" name="direccion" placeholder="Escribe la dirección" required>
                </div>
                
                <div class="AggAñadir">
                    <label for="activo">Activo</label>
                    <input type="hidden" id="activo" name="activo" value="1">
                </div>

                <div class="AggAñadir">
                    <button type="submit">Añadir Alumno</button>
                </div>
            </form>

            <div class="AggAñadir">
                <button type="button" onclick="window.location.href='opciones.jsp';">Volver</button>
            </div>
        </div>
    </body>
</html>
