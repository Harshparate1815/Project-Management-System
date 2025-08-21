package test;

import java.io.IOException;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import dao.RegisterDao;
import pojos.StudentBean;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet 
{
	RegisterDao rd;
	public void init()throws ServletException
	{
	rd=new RegisterDao();
	}
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
    {
    	
        response.setContentType("text/html");
        
        ServletContext sc=getServletContext();
        
        String userType=(String)sc.getAttribute("usertype");
        System.out.println(userType);
        
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        StudentBean s = new StudentBean();
        
        s.setId(id);
        s.setName(name);
        s.setEmail(email);
        s.setPassword(password);
        s.setRole(userType);

        int status = rd.register(s);

        if (status > 0)
        {
            response.sendRedirect("Login.jsp");
        } 
        else
        {
            response.getWriter().println("Registration failed. Try again.");
        }
    }
}



