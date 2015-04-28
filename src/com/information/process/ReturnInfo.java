package com.information.process;

import java.sql.*;
import java.util.ArrayList;

import com.information.personal.UserDonationBean;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ReturnInfo
 */
@WebServlet("/informationReturn")
public class ReturnInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con = new DBConnection().connect();
	private ArrayList<UserDonationBean> u;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("udbean", u);
		response.sendRedirect("donation_log_wp.jsp");
	}
	
	protected void getLog() throws SQLException
	{
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM DonationLog");
		u = new ArrayList<UserDonationBean>();
		
		while(rs.next())
		{
			UserDonationBean ud = new UserDonationBean();
			ud.setDonationID(rs.getInt("DonationID"));
			ud.setAmount(rs.getDouble("Amount"));
			ud.setDateDonated(rs.getDate("DateDonated"));
			ud.setUsername(rs.getString("Username"));
			u.add(ud);
		}
	}

}
