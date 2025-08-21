package harsh;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import pojos.StudentBean;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/ExamServlet")

public class ExamServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
				HttpSession session=request.getSession(false);
				StudentBean sb = (StudentBean) session.getAttribute("userDetails");
                String username=sb.getName();
                String password=sb.getPassword();
                String subject = request.getParameter("subject");
                String userId=sb.getId();
                String subject1=null;
				String sem = (String)session.getAttribute("sem");
				System.out.println(sem);
                System.out.println(userId);
                try
                {                  
                   
                    int score = 0;
                    
                    if("java5th".equals(subject))								// When it compares it compares it with value of that file
                    {
                    if ("A".equals(request.getParameter("q1"))) score++;
                    if ("C".equals(request.getParameter("q2"))) score++;
                    if ("B".equals(request.getParameter("q3"))) score++;
                    if ("C".equals(request.getParameter("q4"))) score++;
                    if ("C".equals(request.getParameter("q5"))) score++;
                    subject1="Java";
                    }
                    if("Cpp5th".equals(subject))
                    {
                    	if("C".equals(request.getParameter("q1")))score++;
                    	if("C".equals(request.getParameter("q2")))score++;
                    	if("B".equals(request.getParameter("q3")))score++;
                    	if("B".equals(request.getParameter("q4")))score++;
                    	if("C".equals(request.getParameter("q5")))score++;
                    	subject1="C++";
                    }
                    if("Python5th".equals(subject))
                    {
                    	if("B".equals(request.getParameter("q1")))score++;
                    	if("B".equals(request.getParameter("q2")))score++;
                    	if("C".equals(request.getParameter("q3")))score++;
                    	if("C".equals(request.getParameter("q4")))score++;
                    	if("C".equals(request.getParameter("q5")))score++;
                    	subject1="Python";
                    	
                    }
                    if("java7th".equals(subject))
                    {
                    	if("A".equals(request.getParameter("q1")))score++;
                    	if("D".equals(request.getParameter("q2")))score++;
                    	if("B".equals(request.getParameter("q3")))score++;
                    	if("C".equals(request.getParameter("q4")))score++;
                    	if("A".equals(request.getParameter("q5")))score++;
                    	subject1="Java";
                    }
                    if("Cpp7th".equals(subject))
                    {
                    	if("C".equals(request.getParameter("q1")))score++;
                    	if("C".equals(request.getParameter("q2")))score++;
                    	if("C".equals(request.getParameter("q3")))score++;
                    	if("B".equals(request.getParameter("q4")))score++;
                    	if("C".equals(request.getParameter("q5")))score++;
                    	subject1="C++";
                    }
                    if("Python7th".equals(subject))
                    {
                    	if("B".equals(request.getParameter("q1")))score++;
                    	if("A".equals(request.getParameter("q2")))score++;
                    	if("C".equals(request.getParameter("q3")))score++;
                    	if("C".equals(request.getParameter("q4")))score++;
                    	if("A".equals(request.getParameter("q5")))score++;
                    	subject1="Python";
                    }
                    	
                    
                    AnswerBean ab=new AnswerBean();				// By this we can add data in database i.e result
                    ab.setuId(userId);
                    ab.setuName(username);
                    ab.setScore(score);
                    ab.setuSubject(subject1);
                   // ab.setRanked("1th");
                    ab.setSem(sem);
                    
                    AnswerDAO dao=new AnswerDAO();
                    dao.insert(ab);
                   request.setAttribute("score", score);
                   RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
                   rd.forward(request, response);
                   

                }catch(Exception e)
                {
                    e.printStackTrace();
                }
        
    }
}
