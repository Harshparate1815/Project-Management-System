
package DButils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection 
{
    public static Connection getConnection()
    {
        Connection conn = null;
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dev","root","root");
            
        } catch (Exception e) {
            e.printStackTrace(); // or log the error
        }
        return conn;
    }
}
