package adm;

import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/res")
public class ResultExamServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try
		{
		String sem = req.getParameter("semester");
		ArrayList<ExamscoreBeans> al1 =new ResultDao().regstd(sem); // table examscore details
		//ArrayList<ResultShowStdBeans> al2 = new ResultDao().resultstd();	
		ArrayList<ProjectBeans> pj = new ResultDao().project(sem); // rank , ProjectName 
		//System.out.println("Hello I am in the ResultServlet");

        Iterator<ExamscoreBeans> it1 = al1.iterator();
        Iterator<ProjectBeans> it2 = pj.iterator();
        ArrayList<ResultSetStudBeans> arl = new ArrayList<ResultSetStudBeans>();
       // System.out.println("HEllo stude");
     // Step 1: Group projects by rank
       
        List<ProjectBeans> JavaRank1 = new ArrayList();
        List<ProjectBeans> JavaRank2 = new ArrayList();
        List<ProjectBeans> PythonRank1= new ArrayList();
        List<ProjectBeans> PythonRank2= new ArrayList();
        List<ProjectBeans> CppRank1= new ArrayList();
        List<ProjectBeans> CppRank2= new ArrayList();

//System.out.println("HEllo i am i nthe jkfj ");
       
        while (it2.hasNext()) {
            ProjectBeans pj1 = it2.next();
           if(pj1.getTech().equals("Java") || pj1.getTech().equals("java") )   
           {                                // Setting data project beans 
        		if(pj1.getRank()==1)
        		{
        			//System.out.println("I am in java");
        			JavaRank1.add(pj1);
        		}
        		else
        		{
        			JavaRank2.add(pj1);
        		}
           }else if(pj1.getTech().equals("C++") || pj1.getTech().equals("Cpp"))
           {
        	   if(pj1.getRank()==1)
        	   {
        		   CppRank1.add(pj1);
        	   }
        	   else
        	   {
        		   CppRank2.add(pj1);
        	   }
           }
           else
           {
        	   if(pj1.getRank()==1)
        	   {
        		   PythonRank1.add(pj1);
        	   }
        	   else
        	   {
        		   PythonRank2.add(pj1);
        	   }
           }
            
        }

        // Step 2: Indexes to cycle through each rank list and assgin the project to student
        int idx1 = 0, idx2 = 0, idx3 = 0 , idx4=0 , idx5=0 , idx6=0 ;

        while (it1.hasNext()) {
        	ExamscoreBeans rsd = it1.next(); // Third table result merge
            //System.out.println(rsd.getUsrid());
        	ProjectBeans assignedProject = null;
            ResultSetStudBeans rb = new ResultSetStudBeans();
           
            if(rsd.getTech().equals("Java"))
            {
            	if(rsd.getScore()>=3)
            	{
            		assignedProject=JavaRank1.get(idx1 % JavaRank1.size());  //object assgin beansobj
            		idx1++ ;
            	}
            	else
            	{
            		assignedProject=JavaRank2.get(idx2 % JavaRank2.size());
            		idx2++ ;
            		// else other rank like 2 rank project
            	}
            						// i want to assgin projectrank 1 in this sector or any order rank project 
            }else if (rsd.getTech().equals("Python"))
            {
            	if(rsd.getScore()>=3)
            	{
            		assignedProject=PythonRank1.get(idx3 % PythonRank1.size());
            		idx3++ ;
            	}
            	else
            	{
            		assignedProject=PythonRank2.get(idx4 % PythonRank2.size());
            		idx4++ ;
            	}
            }
            else
            {
            	if(rsd.getScore()>=3)
            	{
            		assignedProject=CppRank1.get(idx5 % CppRank1.size());
            		idx5++;
            	}
            	else
            	{
            		assignedProject=CppRank2.get(idx6 % CppRank2.size());
            		idx6++ ;
            	}
            }
            
                  
            // Output for confirmation
           
           rb.setUsrid(rsd.getUsrid());
           rb.setName(rsd.getName());
           rb.setTech(assignedProject.getTech());
           rb.setProject_name(assignedProject.getName_project());
           rb.setRanked(assignedProject.getRank());
           rb.setSem(assignedProject.getSem());

         
          
            // Optional: Save to database here
            arl.add(rb);
        }

        	
        int k = new AssignProjectDao().assign(arl);
       // String sem = (String)req.getParameter("semester");
    	ArrayList<ResultBeans> all = new ResultDao().resultstd(sem);

        Map<String, List<ResultBeans>> grouped = all.stream()
                .collect(Collectors.groupingBy(ResultBeans::getProject));

        ArrayList<GroupresultBeans> finalGroupList = new ArrayList<>();

        grouped.forEach((projectName, studentList) -> {
            int total = studentList.size();

            for (int i = 0; i < total; i += 3) {
                GroupresultBeans gb = new GroupresultBeans();
                gb.setProject_name(projectName);
                gb.setUsr1(i < total ? studentList.get(i).getUsrid() : null);
                gb.setUsr2(i + 1 < total ? studentList.get(i + 1).getUsrid() : null);
                gb.setUsr3(i + 2 < total ? studentList.get(i + 2).getUsrid() : null);
                gb.setTech(studentList.get(i).getTech());
                gb.setRanked(studentList.get(i).getRanked());
                gb.setSem(studentList.get(i).getSem());

                finalGroupList.add(gb);
            }
        });  


        // Now insert the data into the table
        new GroupresultDao().insertGroups(finalGroupList);

       // resp.getWriter().println("Group data inserted successfully.");
       req.getRequestDispatcher("ViewResult.jsp").forward(req, resp);
        	
		}
	catch(Exception ex)
	{
		System.out.println(ex.getLocalizedMessage());
	}

	}
	}

			

