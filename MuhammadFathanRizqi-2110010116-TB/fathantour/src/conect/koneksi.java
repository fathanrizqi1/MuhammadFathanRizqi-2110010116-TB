
package conect;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ACER
 */
public class koneksi {
     private final String url = "jdbc:mysql://localhost:3306/wisata";
    private final String user = "root";
    private final String pass = "";
    
  
    
   

    public Connection getConnection() {
        Connection conn;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, pass);
            System.out.println("koneksi berhasil");
            return conn;
        } catch (ClassNotFoundException | SQLException ex) {
            System.err.println("koneksi gagal"+ex);
            return conn = null;
        }
    }
    
     public static void main(String[] args) {
        koneksi k =  new koneksi();
        k.getConnection();
    }
    
}


