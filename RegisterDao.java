package dao;
import static DButils.DBConnection.getConnection;
import java.sql.*;
import jakarta.servlet.http.HttpServlet;
import pojos.StudentBean;


public class RegisterDao 
{
		PreparedStatement ps;
		Connection cn;
		public RegisterDao()
		{
			try
			{
				cn=getConnection();
				ps = cn.prepareStatement("INSERT INTO login VALUES (?, ?, ?, ?,?)");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		
		}
	    public int register(StudentBean s)
	    {
	        int status = 0;
	        try 
	        {
	            ps.setString(1,s.getId());           
	            ps.setString(2,s.getName());
	            ps.setString(3,s.getEmail());
	            ps.setString(4,s.getPassword()); 
	            ps.setString(5,s.getRole());
	            
	            status = ps.executeUpdate();
	        } 
	        catch (Exception e) 
	        {
	            e.printStackTrace();
	        }
	        return status;
	    }
}