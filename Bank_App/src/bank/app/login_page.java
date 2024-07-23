import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/login")
public class login_page extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String num = req.getParameter("number");
		String pass = req.getParameter("password");
		
		String url = "jdbc:mysql://localhost:3306?user=root&password=12345";
		String query = "select * from balu_bank.bank_reg where Mobile_No=? and Password=?";
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url);
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, num);
			ps.setString(2, pass);
			
			ResultSet rs = ps.executeQuery();
			PrintWriter pw = resp.getWriter();
			RequestDispatcher dispatcher;
			HttpSession session;
			if (rs.next()) 
			{
				Thread.sleep(2000);
				req.setAttribute("suc", "Login Successfully...!!!");
				dispatcher = req.getRequestDispatcher("service.jsp");
				dispatcher.include(req, resp);
				
				
				
			}
			else 
			{
				Thread.sleep(2000);
				req.setAttribute("msg", "Invalid Credentials...!!!");
				dispatcher = req.getRequestDispatcher("login.jsp");
				dispatcher.include(req, resp);

			}
			
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
