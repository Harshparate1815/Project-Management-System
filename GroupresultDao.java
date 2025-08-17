package adm;
import static DButils.DBConnection.getConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class GroupresultDao {

    public void insertGroups(ArrayList<GroupresultBeans> groupList) {
        try (Connection con = getConnection()) {
            String query = "INSERT INTO groupresult (project, usr1, usr2, usr3, tech, ranked, sem) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);

            for (GroupresultBeans gb : groupList) {
                ps.setString(1, gb.getProject_name());
                ps.setString(2, gb.getUsr1());
                ps.setString(3, gb.getUsr2());
                ps.setString(4, gb.getUsr3());
                ps.setString(5, gb.getTech());
                ps.setInt(6, gb.getRanked());
                ps.setString(7, gb.getSem());

                ps.executeUpdate(); // insert one row
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public ArrayList<GroupresultBeans> display(String sem)
    {
    	ArrayList<GroupresultBeans> al = new ArrayList<GroupresultBeans>();
    	try
    	{
    		Connection con = getConnection();
    		PreparedStatement pr = con.prepareStatement("select * from groupresult where sem = ? ");
    		pr.setString(1, sem);
    		
    		ResultSet rs = pr.executeQuery();
    		
    		while(rs.next())
    		{
    			GroupresultBeans gs = new GroupresultBeans();
    			gs.setProject_name(rs.getString(1));
    			gs.setUsr1(rs.getString(2));
    			gs.setUsr2(rs.getString(3));
    			gs.setUsr3(rs.getString(4));
    			gs.setTech(rs.getString(5));
    			gs.setRanked(rs.getInt(6));
    			gs.setSem(rs.getString(7));
    			
    			al.add(gs);
    		}
    	}
    	catch(Exception ex)
    	{
    		System.out.println(ex.getLocalizedMessage());
    	}
    	return al ;
    }
	
}

