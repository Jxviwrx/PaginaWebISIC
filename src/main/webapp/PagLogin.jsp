<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>WEB ISIC</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        function login() {
            var nombre_usuario = $("#nombre_usuario").val(); 
            var contraseña = $("#contraseña").val();        

            // Validar que los campos no estén vacíos
            if (nombre_usuario.trim() == "" || contraseña.trim() == "") {
                alert("Usuario y contraseña son obligatorios.");
                return;
            }

            $.ajax({
                url: "http://localhost:8080/ISICWS/webresources/Login/usuarios",
                type: "POST",
                data: {
                    nombre_usuario: nombre_usuario, 
                    contraseña: contraseña          
                },
                success: function(response) {
                    if (response.message) {
                        window.location.href = "opciones.jsp"; 
                    }
                },
                error: function(xhr, status, error) {
                    var errorMessage = JSON.parse(xhr.responseText).error;
                    alert("Error: " + errorMessage); 
                }
            });
        }
    </script>
</head>
<body>
    <div id="marco-color"></div>

    <div class="login-container">
        <section>
            <img src="LogoISIC.jpg">
        </section>
        <h2>Iniciar sesión</h2>
        <form onsubmit="event.preventDefault(); login();"> 
            <div class="UserLogin">
                <label for="nombre_usuario">Usuario</label>
                <input type="text" id="nombre_usuario" name="nombre_usuario" placeholder="Escribe tu usuario" required>
            </div>

            <div class="UserLogin">
                <label for="contraseña">Contraseña</label>
                <input type="password" id="contraseña" name="contraseña" placeholder="Escribe tu contraseña" required>
            </div>

            <div class="UserLogin">
                <button type="submit">Iniciar sesión</button>
            </div>
        </form>
    </div>
</body>
</html>
