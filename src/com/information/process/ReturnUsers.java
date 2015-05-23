package com.information.process;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.sql.*;
import java.util.ArrayList;

import com.information.personal.PersonalBean;
import com.information.personal.ADBean;
import com.information.process.DBConnection;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ReturnUsers
 */
@WebServlet("/UserReturn")
public class ReturnUsers extends HttpServlet { // gets the all user details for admin viewing
	private static final long serialVersionUID = 1L;
	private ArrayList<PersonalBean> Upb;
	private ArrayList<ADBean> Uad;
	private Connection con;
	private String username;
	private String toDate;
	private String fromDate;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// used for staying up-to-date when navigating to the page
		try {
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			java.util.Date today = Calendar.getInstance().getTime();
			
			HttpSession session = request.getSession(false);
			
			username = "";
			toDate = df.format(today);
			fromDate = "2000-1-1";

			getUserDetails();
			
			session.setAttribute("Upb", Upb);
			session.setAttribute("Uad", Uad);
			
			response.sendRedirect(request.getContextPath() + "/admin-content-wp/users_wp.jsp");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// used for querying/filtering certain users
		try {
			HttpSession session = request.getSession(false);
			
			username = request.getParameter("username");
			toDate = request.getParameter("toDate");
			fromDate = request.getParameter("fromDate");
			
			getUserDetails();
			
			session.setAttribute("Upb", Upb);
			session.setAttribute("Uad", Uad);
			
			response.sendRedirect(request.getContextPath() + "/admin-content-wp/users_wp.jsp");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void getUserDetails() throws SQLException
	{
		// gets important details from the database
		Upb = new ArrayList<>();
		Uad = new ArrayList<>();
		ADBean a;
		PersonalBean p;
		con = new DBConnection().connect();
		Statement st = con.createStatement();
		Statement st2 = con.createStatement();
		Statement st3 = con.createStatement();
		ResultSet rs;
		ResultSet rs2, rs3;
		
		if (username.equals(""))
		{
			rs2 = st2.executeQuery("SELECT * FROM AccountDetails WHERE DateJoined BETWEEN '"+fromDate+"' AND '" + toDate+"'");
		}
		else
		{
			rs2 = st2.executeQuery("SELECT * FROM AccountDetails WHERE Username = '" + username + "' AND DateJoined BETWEEN '"+fromDate+"' AND '"+toDate+"'");
		}
		
		while (rs2.next())
		{
			if (rs2.getString("Active").equals("NO"))
				continue;
			a = new ADBean();
			rs3 = st3.executeQuery("SELECT * FROM UserDonation WHERE Username = \"" + rs2.getString("Username") + "\"");
			rs = st.executeQuery("SELECT * FROM PersonalInformation WHERE Username =  \"" + rs2.getString("Username") + "\"");
			//System.out.println(rs.isBeforeFirst() + " " + rs2.isBeforeFirst() + " " + rs3.isBeforeFirst());
			rs3.next();
			rs.next();
			p = new PersonalBean();
			p.setUsername(rs.getString("Username"));
			p.setLastName(rs.getString("Lastname"));
			p.setFirstName(rs.getString("Firstname"));
			p.setEmail(rs.getString("Email"));
			a.setDateJoined((java.util.Date)(rs2.getDate("DateJoined")));
			a.setTotalDonations(rs3.getDouble("Donations"));

			Upb.add(p);
			Uad.add(a);
		}
	}

}