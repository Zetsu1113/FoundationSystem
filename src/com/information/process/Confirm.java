package com.information.process;
import com.information.personal.AccountBean;
import com.information.process.DBConnection;

import java.sql.*;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
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

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		HttpSession session = request.getSession();
			if(checkLogin(request, response))
			{
				AccountBean a = new AccountBean();
				a.setPassword(pass);
				a.setUsername(user);
				session.setAttribute("account", a);
				response.sendRedirect("index.html");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean checkLogin(HttpServletRequest request, HttpServletResponse response) throws SQLException
	{
		request.getParameter("username");
		request.getParameter("password");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("SELECT Username, Password FROM AccountDetails");
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
}

