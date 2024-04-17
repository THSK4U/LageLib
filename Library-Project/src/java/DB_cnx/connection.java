/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB_cnx;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class connection {

    private static final String URL = "jdbc:postgresql://localhost:5432/DB_Library";
    private static final String USER = "admin";
    private static final String PASS = "admin";

    public static Connection getConnection() {
        Connection connection = null;
        try {

            Class.forName("org.postgresql.Driver");

            connection = DriverManager.getConnection(URL, USER, PASS);

        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Error cant connet : " + e.getMessage());
        }
        return connection;
    }

}
