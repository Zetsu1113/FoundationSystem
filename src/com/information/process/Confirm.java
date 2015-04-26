package com.information.process;
import com.information.process.DBConnection;
import com.information.personal.PersonalBean;

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
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
					PersonalBean p = getInfo(user);
					HttpSession session = request.getSession();
					session.setAttribute("pbean", p);
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
				break;
			}
			else
				c = false;
		}
		return c;
	}
	
	public PersonalBean getInfo(String username) throws SQLException
	{
		PersonalBean p = new PersonalBean();
		Statement st = con.createStatement();
		rs = st.executeQuery("SELECT * FROM PersonalInformation");
		while (rs.next())
		{
			String dbUsername = rs.getString("Username");
			if(dbUsername.equals(username))
				break;
		}
		p.setLastName(rs.getString(2));
		p.setFirstName(rs.getString(3));
		p.setBirthdate(rs.getString(5));
		p.setEmail(rs.getString(7));
		p.setPhoneNumber(rs.getString(8));
		
		int code = rs.getInt("AddressID");
		int dbCode;
		rs = st.executeQuery("SELECT * FROM AddressInformation");
		while (rs.next())
		{
			dbCode = rs.getInt("AddressID");
			if (dbCode == code)
				break;
		}
		p.setAddress(rs.getString(2) + ", " + rs.getString(4) + ", " + rs.getString(5) + ", " + rs.getString(3));
		return p;
	}
}

