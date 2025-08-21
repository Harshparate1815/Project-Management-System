package harsh;
import static DButils.DBConnection.getConnection;

import java.sql.*;
import DButils.*;

public class AnswerDAO
{
	public int k=0;
	public int insert(AnswerBean ab)
	{
		try
		{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into examscore values(?,?,?,?,?)");
			ps.setString(1, ab.getuId());
			ps.setString(2, ab.getuName());
			ps.setInt(3, ab.getScore());
			ps.setString(4, ab.getuSubject());
			ps.setString(5, ab.getSem());
			k=ps.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}
}
