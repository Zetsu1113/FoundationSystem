package com.information.signup;

import com.information.process.DBConnection;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
/**
 * Servlet implementation class transferInfo
 */
@WebServlet(description = "transfers contents of bean to database", urlPatterns = { "/informationTransfer" })
public class transferInfo extends HttpServlet { // used for signing up
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// used for navigating/staying up-to-date with the database 
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
		// adds the records to tables that contains certain user information
		try {
			toDatabase(request, response);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	private void toDatabase(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ClassNotFoundException
	{
		// transfers the information in the form to the database
		// transfers to: PersonalInformation, AddressInformation, AccountDetails, UserDonations
		Connection con = new DBConnection().connect();
		try
		{
			PreparedStatement stmt1, stmt2, stmt3, stmt4;
			stmt1 = con.prepareStatement("INSERT INTO AddressInformation (AddressID, Country, ZipCode, State, Address) VALUES (null,?,?,?,?)");
			stmt1.setString(1, request.getParameter("country"));
			stmt1.setString(2, request.getParameter("zipcode"));
			stmt1.setString(3, request.getParameter("State"));
			stmt1.setString(4, request.getParameter("Address"));
			stmt1.executeUpdate();
			stmt2 = con.prepareStatement("INSERT INTO AccountDetails VALUES (?,?,?,?,?)");
			stmt2.setString(1, request.getParameter("username"));
			stmt2.setString(2, request.getParameter("Password"));
			stmt2.setDate(3, new java.sql.Date(new java.util.Date().getTime()));
			stmt2.setString(4, "3");
			stmt2.setString(5, "YES");
			stmt2.executeUpdate();
			stmt3 = con.prepareStatement("INSERT INTO PersonalInformation VALUES (?,?,?,?,?,?,?,?)");
			Statement address = con.createStatement();
			ResultSet result = address.executeQuery("SELECT max(AddressID) FROM AddressInformation");
			result.next();
			stmt3.setString(1, request.getParameter("username"));
			stmt3.setString(2, request.getParameter("LastName"));
			stmt3.setString(3, request.getParameter("FirstName"));
			stmt3.setString(4, request.getParameter("gender"));
			stmt3.setString(5, request.getParameter("birthdate"));
			stmt3.setInt(6, result.getInt(1));
			stmt3.setString(7, request.getParameter("Email"));
			stmt3.setString(8, request.getParameter("PhoneNumber"));
			stmt3.executeUpdate();
			stmt4 = con.prepareStatement("INSERT INTO UserDonation VALUES (?, ?, null)");
			stmt4.setString(1, request.getParameter("username"));
			stmt4.setDouble(2, 0);
			stmt4.execute();
			con.commit();
			response.sendRedirect("successfulSignUp.jsp");
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