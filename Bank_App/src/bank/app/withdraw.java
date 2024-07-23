import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/withdraw")
public class withdraw extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String num = req.getParameter("number");
		
		String withdrawn = req.getParameter("amount");
		
		String url = "jdbc:mysql://localhost:3306?user=root&password=12345";
		String query = "update balu_bank.bank_reg set Amount=Amount - ? where Mobile_No=?";
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url);
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, withdrawn);
			ps.setString(2, num);
			
			int n = ps.executeUpdate();
			PrintWriter pw = resp.getWriter();
			RequestDispatcher dispatcher;
			HttpSession session;
			if (n > 0 )
			{
				Thread.sleep(2000);
				req.setAttribute("bal", "Successfully Withdrawn...!!!");
				dispatcher = req.getRequestDispatcher("withdrawn.jsp");
				dispatcher.include(req, resp);
				
				
				
			}
			else 
			{
				Thread.sleep(2000);
				req.setAttribute("msg", "Please Enter Valid Number...!!!");
				dispatcher = req.getRequestDispatcher("withdrawn.jsp");
				dispatcher.include(req, resp);

			}
			
			
		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
