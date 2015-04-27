package com.information.process;
import com.information.process.DBConnection;
import com.information.personal.PersonalBean;
import com.information.personal.ADBean;

import java.sql.*;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Confirm
 */
@WebServlet(description = "confirms entry from database", urlPatterns = { "/ConfirmInformation" })
public class Confirm extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con = new DBConnection().connect();
	private String user;
	private String pass;
	private ResultSet rs;
	private PersonalBean p = new PersonalBean();
	private ADBean a = new ADBean();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			if(checkLogin(request, response))
			{
				String res[] = (request.getHeader("referer")).split("/");
				String page = res[res.length - 1];
				Cookie username = new Cookie("username", user);
				Cookie password = new Cookie("password", user);
				response.addCookie(username);
				response.addCookie(password);
				if (page.equals("index.html") || page.equals("FoundationSystem"))
				{
					getInfo(user);
					HttpSession session = request.getSession();
					session.setAttribute("pbean", p);
					session.setAttribute("adbean", a);
					response.sendRedirect("donations_panel.jsp");
				}
			}
			else 
			{
				//redirect to failed page
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean checkLogin(HttpServletRequest request, HttpServletResponse response) throws SQLException
	{
		user = request.getParameter("username");
		pass = request.getParameter("password");
		Statement st = con.createStatement();
		rs = st.executeQuery("SELECT * FROM AccountDetails");
		boolean c = false;
		
		while (rs.next())
		{
			String dbUsername = rs.getString("Username"), dbPassword = rs.getString("Password");
			if (dbUsername.equals(user) && dbPassword.equals(pass))
			{
				c = true;
				if (rs.getString("Active").equals("NO"))
					c = false;
				break;
			}
			else
				c = false;
		}
		return c;
	}
	
	public void getInfo(String username) throws SQLException
	{
		Statement st = con.createStatement();
		rs = st.executeQuery("SELECT * FROM PersonalInformation WHERE Username = \""+username+"\"");
		rs.next();
		
		p.setLastName(rs.getString(2));
		p.setFirstName(rs.getString(3));
		p.setBirthdate(rs.getString(5));
		p.setEmail(rs.getString(7));
		p.setPhoneNumber(rs.getString(8));
		
		int code = rs.getInt("AddressID");
		rs = st.executeQuery("SELECT * FROM AddressInformation WHERE AddressID = " + code);
		rs.next();
		p.setAddress(rs.getString(2) + ", " + rs.getString(4) + ", " + rs.getString(5) + ", " + rs.getString(3));
		
		st = con.createStatement();
		rs = st.executeQuery("SELECT Username, COUNT(*) FROM DonationLog WHERE Username = \""+ username+"\"");
		rs.next(); a.setDonationsCount(rs.getInt("COUNT(*)"));
		rs = st.executeQuery("SELECT DateJoined FROM AccountDetails WHERE Username = \""+username+"\"");
		rs.next(); a.setDateJoined(rs.getDate("DateJoined"));
		rs = st.executeQuery("SELECT Donations FROM UserDonation WHERE Username = \""+username+"\"");
		rs.next(); a.setTotalDonations(rs.getDouble("Donations"));
	}
}

