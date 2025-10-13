package csd_430.Module_6;

import java.sql.*;

public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/CSD430";
    private static final String USER = "student1";
    private static final String PASS = "pass";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASS);
    }
}
