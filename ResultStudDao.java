package test;

import java.sql.*;
import adm.ResultBeans;
import pojos.StudentBean;

import static DButils.DBConnection.getConnection;

public class ResultStudDao {

    public ResultBeans show(String usrid) {
        ResultBeans rsb = null;

        try (Connection con = getConnection();
             PreparedStatement pr = con.prepareStatement("SELECT * FROM result WHERE id = ?")) {
            
            pr.setString(1, usrid);
            ResultSet rs = pr.executeQuery();

            if (rs.next()) { 
                //System.out.println(rs.getString(1));
                rsb = new ResultBeans ();
            	rsb.setUsrid(rs.getString(1));
                rsb.setName(rs.getString(2));
                rsb.setTech(rs.getString(3));
                rsb.setProject(rs.getString(4));
                rsb.setRanked(rs.getInt(5));
                rsb.setSem(rs.getString(6));
            } else {
                rsb = null ;
            	System.out.println("No data found for user id: " + usrid);
            }

        } catch (Exception ex) {
            System.out.println("Error: " + ex.getLocalizedMessage());
        }

        return rsb;
    }
    
    public Boolean check(String id)
    {
    	StudentBean sb = new StudentBean();
    	try
    	{
    		Connection con = getConnection ();
    		PreparedStatement pr = con.prepareStatement("select * from examscore where id = ?");
    		pr.setString(1, id);
    		
    		ResultSet rs = pr.executeQuery();
    		if(rs.next())
    		{
    			return true ; 
    		}
    			
    	}
    	catch(Exception ex)
    	{
    		System.out.println(ex.getLocalizedMessage());
    	}
    	return false ;
    }
}
