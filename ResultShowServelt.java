package test;

import java.io.IOException;

import adm.ResultBeans;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import pojos.StudentBean;
@WebServlet("/viewResult")
public class ResultShowServelt extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession hs = req.getSession();
		StudentBean sb = (StudentBean)hs.getAttribute("userDetails");
		try
		{
		ResultBeans rs = new ResultStudDao().show(sb.getId());
		System.out.println(rs.getName());
			if(rs!=null)
			{
				req.setAttribute("rsb", rs);
				req.getRequestDispatcher("ResultShowStud.jsp").forward(req, resp);
			
			}
		}
		catch(Exception ex)
		{
			req.getRequestDispatcher("result.jsp").forward(req, resp);
		}
		
		
	
	}
	
		

}
