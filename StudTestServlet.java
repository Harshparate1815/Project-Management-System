package test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import pojos.StudentBean;

@WebServlet("/test")
public class StudTestServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession hp = req.getSession(false);
		StudentBean sb = (StudentBean)hp.getAttribute("userDetails");
		
		Boolean bs = new ResultStudDao().check(	sb.getId());
	
		if(bs==true)
		{
			req.getRequestDispatcher("result.jsp").forward(req, resp);
		}
		else
		{
			req.getRequestDispatcher("selectSem.html").forward(req, resp);
		}
		
	}

		
}
