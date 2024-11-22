<%-- 
    Document   : añadirPagos
    Created on : 21 nov 2024, 11:50:16 a.m.
    Author     : jf398
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar pagos</title>
        <link rel="stylesheet" href="stylePagos.css">
    </head>
    <body>
            <div class="opciones-container">
            <h2>Registrar pagos.</h2>
            <form action="http://localhost:8080/ISICWS/webresources/Usuarios/guardar" method="post">
            <div class="AggPagos">
            <label for="usuario">Matricula</label>
            <input type="text" id="nombre_usuario" name="nombre_usuario" placeholder="Ingresa la matriula del estudiante." required>
        </div>

      <div class="AggPagos">
        <label for="contraseña">Monto</label>
        <input type="text" id="contraseña" name="contraseña" placeholder="Ingrese el monto." required>
      </div>

      <div class="AggPagos">
        <label for="Metodo de pago">Metodo de pago</label>
        <input type="text" id="rol" name="rol" placeholder="Selecciona el metodo de pago." required>
      </div>

      <div class="AggPagos">
        <button type="submit">Registrar pago</button>
      </div>
    </form>

    <div class="AggPagos">
      <button type="button" onclick="window.location.href='pagos.jsp';">Volver</button>
    </div>
  </div>
</body>
</html>
