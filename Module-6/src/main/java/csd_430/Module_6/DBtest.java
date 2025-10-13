package csd_430.Module_6;

import java.sql.Connection;

public class DBTest {
    public static void main(String[] args) {
        try (Connection conn = DBConnection.getConnection()) {
            System.out.println("✅ Connection successful!");
        } catch (Exception e) {
            System.out.println("❌ Connection failed: " + e.getMessage());
        }
    }
}

