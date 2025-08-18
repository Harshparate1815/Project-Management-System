package adm;
import java.sql.*;
import test.*; 
import java.util.*;
import static DButils.DBConnection.getConnection;
public class ResultDao {
	
		public ArrayList<ExamscoreBeans> regstd (String sem)  // for studreg table 
		{
			ArrayList <ExamscoreBeans>al = new ArrayList<ExamscoreBeans>() ;
			try
			{
				Connection con = getConnection();
				PreparedStatement pr = con.prepareStatement("select * from examscore where sem=?");
				
				pr.setString(1, sem);
				ResultSet rs = pr.executeQuery();
				
				while(rs.next())
				{
					ExamscoreBeans rsb = new ExamscoreBeans();
					rsb.setUsrid(rs.getString(1));
					rsb.setName(rs.getString(2));
					rsb.setScore(rs.getInt(3));
					rsb.setTech(rs.getString(4));
					rsb.setSem(rs.getString(5));
					
						
					//System.out.println(rs.getString(1));			
									//rsb.setSem(rs.getString(7));
					
					al.add(rsb);
				}
				System.out.println("Dao End");
			}
			catch(Exception ex)
			{
				System.out.println(ex.getLocalizedMessage());
			}
				return al ;
		}

		

		public ArrayList<ResultBeans> resultstd (String sem) // table resultstd 
		{
			ArrayList <ResultBeans> al =  new ArrayList<ResultBeans>();
			try
			{
				Connection con = getConnection();
				PreparedStatement pr = con.prepareStatement("select * from result where sem = ?");
				
				pr.setString(1, sem);
				ResultSet rs = pr.executeQuery();
				
				while(rs.next())
				{
					ResultBeans rsd = new ResultBeans();
					rsd.setUsrid(rs.getString(1));
					rsd.setName(rs.getString(2));
					rsd.setTech(rs.getString(3));
					rsd.setProject(rs.getString(4));
					rsd.setRanked(rs.getInt(5));
					rsd.setSem(rs.getString(6));
					
					al.add(rsd);
				}
				
			}
			catch(Exception ex)
			{
				System.out.println(ex.getLocalizedMessage());
			}
			return al ;
		}
		
		public ArrayList<ProjectBeans> project (String sem)
		{
			ArrayList<ProjectBeans> al = new ArrayList<ProjectBeans> ();
			try
			{
				Connection con = getConnection();
				PreparedStatement pr = con.prepareStatement("select * from project where sem = ?");
				pr.setString(1, sem);

				ResultSet rs = pr.executeQuery();
				
				while(rs.next())
				{
					ProjectBeans pj = new ProjectBeans();
					
					pj.setRank(rs.getInt(1));
					pj.setName_project(rs.getString(2));
					pj.setSem(rs.getString(3));
					pj.setTech(rs.getString(4));
					//pj.setSem(sem);
					
					al.add(pj);					
				}
			}
			catch(Exception ex)
			{
				System.out.println(ex.getLocalizedMessage());
			}
			return al ;
		}
		
}
