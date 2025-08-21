package harsh;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

public class LoginServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/examportal", "root", "AdminRoot@1234");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE username=? AND password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);		// To Store Values in session easy retrieval
                session.setAttribute("password", password);
                response.sendRedirect("selectSem.html");
            } else {
                response.sendRedirect("index.jsp?error=1");
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}
