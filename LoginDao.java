package dao;

import static DButils.DBConnection.getConnection;
import java.sql.*;
import pojos.StudentBean;

public class LoginDao 
{
	PreparedStatement ps,ps1;
	Connection cn;
	public LoginDao()
	{
		try
		{
			cn=getConnection();
			ps1= cn.prepareStatement("SELECT * FROM login WHERE id = ? AND password = ?");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
	}
	
    public StudentBean login(String id, String password)throws SQLException
    {
         ps1.setString(1,id);
         ps1.setString(2,password);

         ResultSet rs = ps1.executeQuery();
            
         if(rs.next())
         {
            StudentBean bean = new StudentBean();
            bean.setId(rs.getString(1));
            bean.setName(rs.getString(2));
            bean.setEmail(rs.getString(3));
            bean.setPassword(rs.getString(4));
            bean.setRole(rs.getString(5));
                
            return bean;
         }
         else
         {
            return null;
         }
    }
}


