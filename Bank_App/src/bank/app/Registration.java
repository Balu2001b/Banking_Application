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
@WebServlet("/Registration")
public class Registration extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String f_name = req.getParameter("f_name");
		String l_name = req.getParameter("l_name");
		String mobile = req.getParameter("mobile");
		String aadhar = req.getParameter("aadhar");
		String pan = req.getParameter("pan");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String dob = req.getParameter("dob");
		String gender = req.getParameter("gender");
		String toa = req.getParameter("toa");
		String amount = req.getParameter("amount");
		String pass = req.getParameter("password");
		String pass1 = req.getParameter("pass1");
		
		String url = "jdbc:mysql://localhost:3306?user=root&password=12345";
		String query = "insert into balu_bank.bank_reg values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url);
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, f_name);
			ps.setString(2, l_name);
			ps.setString(3, mobile);
			ps.setString(4, aadhar);
			ps.setString(5, pan);
			ps.setString(6, email);
			ps.setString(7, address);
			ps.setString(8, dob);
			ps.setString(9, gender);
			ps.setString(10, toa);
			ps.setString(11, amount);
			ps.setString(12, pass);
			ps.setString(13, pass1);
			
			int num = ps.executeUpdate();
			RequestDispatcher dispatcher;
			HttpSession session;
			
			if (num > 0 ) 
			{
				Thread.sleep(2000);
				req.setAttribute("reg", "Registartion Successfully...!!!");
				dispatcher = req.getRequestDispatcher("Registration.jsp");
				dispatcher.include(req, resp);
				
				
				
			}
			else 
			{
				Thread.sleep(2000);
				req.setAttribute("msg", "Please fill out fields...!!!");
				dispatcher = req.getRequestDispatcher("Registration.jsp");
				dispatcher.include(req, resp);

			}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
