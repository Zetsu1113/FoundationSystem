package com.information.donate;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.information.process.DBConnection;

/**
 * Servlet implementation class transferDonation
 */
@WebServlet("/transferDonationPath")
public class transferDonation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			toDatabase(request, response);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

			HttpSession session = request.getSession(false);
			toDatabase(request, response);
			
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	private void toDatabase(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ClassNotFoundException
	{
		Cookie ck[] = request.getCookies();
		Connection con = new DBConnection().connect();
		try
		{
			PreparedStatement stmt1, stmt2, stmt3;
			stmt1 = con.prepareStatement("INSERT INTO DonationLog (DonationID, Username, Amount, DateDonated) VALUES (null,?,?,?)");
			stmt1.setString(1, ck[1].getValue());
			stmt1.setString(2, request.getParameter("amount"));
			stmt1.setDate(3, new java.sql.Date(new java.util.Date().getTime()));
			stmt1.executeUpdate();
			stmt2 = con.prepareStatement("UPDATE UserDonation SET Donations = Donations + '" + request.getParameter("amount") + "' WHERE Username = '" + ck[1].getValue() + "'");
			stmt2.executeUpdate();
			stmt3 = con.prepareStatement("UPDATE UserDonation SET LastDonated =  NOW() WHERE Username = '"+ck[1].getValue()+"'");
			stmt3.executeUpdate();
			if (((String)(request.getParameter("password"))).equals(ck[2].getValue()))
			{
				con.commit();
				response.sendRedirect("ConfirmInformation");
			}
			else
				response.sendRedirect("login.jsp");
			//response.sendRedirect(successfulDonation.jsp);
		}
		catch (Exception e)
		{ 
			//response.sendRedirect() to FAILED Page;
			con.rollback();
			System.out.println(e);
		}
		finally
		{
			con.close();
			
		}

}
}
