package test;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import dao.LoginDao;
import pojos.StudentBean;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet 
{
    LoginDao ld;
    
	public void init()
	{
	   ld=new LoginDao();
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
    {
    	try
    	{
    		response.setContentType("text/html");
        	
            String uN= request.getParameter("id");
            String pW=request.getParameter("password");
            
            StudentBean sb=ld.login(uN,pW);
            if(sb!=null)
            {
            	  if(sb.getRole().equals("admin"))
            	  {
            		  HttpSession session = request.getSession();
                	  session.setAttribute("userDetails",sb);
                	  session.setMaxInactiveInterval(20 * 60); // 900 seconds
                	  response.sendRedirect("DashBoardAdmin.jsp"); // send request to the page
            	  }
            	  else
            	  {
            		  HttpSession session = request.getSession();
                	  session.setAttribute("userDetails",sb);
                	  session.setMaxInactiveInterval(20 * 60); // 900 seconds
                	  response.sendRedirect("StudentDashBoard.jsp");   // send request to the page 
            	  }
            }
            else
            {
            	response.sendRedirect("Login.jsp"); 
            }
          
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    }
}


