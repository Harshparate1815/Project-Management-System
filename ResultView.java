package adm;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/result")
public class ResultView  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sem = (String) req.getParameter("semester");
		ArrayList<ResultBeans> rs = new ResultDao().resultstd(sem);
		ArrayList<GroupresultBeans> gs = new GroupresultDao().display(sem);
		
		req.setAttribute("rsb", rs);
		req.setAttribute("grp", gs);
		req.getRequestDispatcher("ShowResult.jsp").forward(req, resp);
		
		
	}
			
		
}
