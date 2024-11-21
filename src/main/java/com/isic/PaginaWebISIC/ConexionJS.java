/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.isic.PaginaWebISIC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionJS {

    private static Connection conexion;

    public static Connection getConexion() {
        try {
            if (conexion == null) {
                // Cambia estos valores con tus credenciales de MySQL
                String url = "jdbc:mysql://localhost:3306/usuarios"; 
                String usuario = "root";  // Tu usuario de MySQL
                String contrasena = "";  // Tu contraseña de MySQL
                
                conexion = DriverManager.getConnection(url, usuario, contrasena);
            }
        } catch (SQLException ex) {
            System.out.println("Error al conectar a la base de datos: " + ex.getMessage());
        }
        return conexion;
    }
}
