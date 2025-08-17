package adm;
import java.sql.*;
import static DButils.DBConnection.getConnection;
import java.util.ArrayList;
import java.util.Iterator;


public class AssignProjectDao {
	
			public int assign(ArrayList<ResultSetStudBeans> rs )
			{
				int k=0 ;
				try
				{ 
					//  examscore table add ; 
					
					Connection con = getConnection();
					PreparedStatement pr = con.prepareStatement("insert into result values (?,?,?,?,?,?)");
				
					for(ResultSetStudBeans rsd : rs) // update the student marks in the db
					{
						pr.setString(1, rsd.getUsrid());
						pr.setString(2,rsd.getName());
						pr.setString(3, rsd.getTech());
						pr.setString(4, rsd.getProject_name());
						pr.setInt(5, rsd.getRanked());
						pr.setString(6,rsd.getSem());
						System.out.println(rsd.getUsrid());
						k += pr.executeUpdate();
					}
					//System.out.println("End ");
				}
				catch(Exception ex)
				{
					System.out.println(ex.getLocalizedMessage());
				}
			
				return k ;
			}

}
