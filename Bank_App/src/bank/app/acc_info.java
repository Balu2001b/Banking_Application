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
@WebServlet("/acc_info")
public class acc_info extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String num = req.getParameter("number");
		
		
		String url = "jdbc:mysql://localhost:3306?user=root&password=12345";
		String query = "select * from balu_bank.bank_reg where Mobile_No=?";
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url);
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, num);
			
			
			ResultSet rs = ps.executeQuery();
			PrintWriter pw = resp.getWriter();
			RequestDispatcher dispatcher;
			HttpSession session;
			if (rs.next()) 
			{
				Thread.sleep(2000);
				req.setAttribute("suc", "Name : "+rs.getString(1)+rs.getString(2));
				req.setAttribute("suc1","Mobile_No : "+rs.getString(3) );
				req.setAttribute("suc2","Aadhar Card_No : "+rs.getString(4) );
				req.setAttribute("suc3","Pan Card_No : "+rs.getString(5) );
				req.setAttribute("suc4","Email_Id : "+rs.getString(6) );
				req.setAttribute("suc5","Address : "+rs.getString(7) );
				req.setAttribute("suc6","Date_of_Birth : "+rs.getString(8) );
				req.setAttribute("suc7","Gender : "+rs.getString(9) );
				req.setAttribute("suc8","Type_of_Account : "+rs.getString(10) );
				req.setAttribute("suc9","Amount : "+rs.getString(11) );
	
				
				dispatcher = req.getRequestDispatcher("account_info.jsp");
				dispatcher.include(req, resp);
				
				
				
			}
			else 
			{
				Thread.sleep(2000);
				req.setAttribute("msg", "Invalid Number...!!!");
				dispatcher = req.getRequestDispatcher("account_info.jsp");
				dispatcher.include(req, resp);

			}
			
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	} 

}
