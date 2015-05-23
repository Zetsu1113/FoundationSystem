package com.information.process;
import com.information.personal.PersonalBean;

import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import com.information.personal.UserDonationBean;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ReturnInfo
 */
@WebServlet("/informationReturn") 
public class ReturnInfo extends HttpServlet { // returns information for the overall donation panel (for administrators only)
	private static final long serialVersionUID = 1L;
	private Connection con = new DBConnection().connect();
	private ArrayList<UserDonationBean> u;
	private ArrayList<PersonalBean> p;
	private String username;
	private String amount;
	private String toDate;
	private String fromDate;
	private ResultSet rs;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// used for getting donations when navigating to the page
		try
		{
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			java.util.Date today = Calendar.getInstance().getTime();
			HttpSession session = request.getSession(false);
			username = "";
			amount = "";
			toDate = df.format(today);
			fromDate = "2000-1-1";

			getLog();
			session.setAttribute("query", u);
			session.setAttribute("names", p);
			response.sendRedirect(request.getContextPath() + "/admin-content-wp/donation_log_wp.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// used for displaying queries made by the administrator
		try
		{
			HttpSession session = request.getSession(false);
			username = request.getParameter("username");
			amount = request.getParameter("amount");
			toDate = request.getParameter("toDate");
			fromDate = request.getParameter("fromDate");

			getLog();
			session.setAttribute("query", u);
			session.setAttribute("names", p);
			response.sendRedirect(request.getContextPath() + "/admin-content-wp/donation_log_wp.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void getLog() throws SQLException
	{
		// gets the donation logs
		Statement st = con.createStatement();
		ResultSet rs2;
		if (username.equals("") && amount.equals(""))
		{
			rs = st.executeQuery("SELECT * FROM DonationLog WHERE DateDonated BETWEEN '"+fromDate+"' AND '" + toDate+"'");
			//rs.next(); System.out.println(rs.getInt("DonationID"));
		}
		else if (amount.equals(""))
		{
			rs = st.executeQuery("SELECT * FROM DonationLog WHERE Username = '"+username+"' AND DateDonated BETWEEN '"+fromDate+"' AND '"+toDate+"'");
		}
		else if (username.equals("") )
		{
			rs = st.executeQuery("SELECT * FROM DonationLog WHERE Amount = '"+amount+"' AND DateDonated BETWEEN '"+fromDate+"' AND '"+toDate+"'");
		}
		else
		{
			rs = st.executeQuery("SELECT * FROM DonationLog WHERE Username = '" + username + "' AND Amount = '" + amount + "' AND DateDonated BETWEEN '"+fromDate+"' AND '"+toDate+"'");
		}
	
		u = new ArrayList<UserDonationBean>();
		p = new ArrayList<PersonalBean>();
		
		while(rs.next())
		{
			UserDonationBean ud = new UserDonationBean();
			ud.setDonationID(rs.getInt("DonationID"));
			ud.setAmount(rs.getDouble("Amount"));
			ud.setDateDonated(rs.getDate("DateDonated"));
			ud.setUsername(rs.getString("Username"));
			u.add(ud);
		}
		
		for (int i = 0; i < u.size(); i++)
		{
			PersonalBean pb = new PersonalBean();
			rs2 = st.executeQuery("SELECT Lastname, Firstname FROM PersonalInformation WHERE Username = '" + u.get(i).getUsername() + "'");
			rs2.next();
			pb.setLastName(rs2.getString("Lastname"));
			pb.setFirstName(rs2.getString("Firstname"));
			p.add(pb);
		}
	}
}