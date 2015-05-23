package com.information.process;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Deletion
 */
@WebServlet("/Delete")
public class Deletion extends HttpServlet { // deletes users (can only be used by administrators)
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// deletion by marking
		String username = request.getParameter("username");
		Connection con = new DBConnection().connect();
		try {
			System.out.println(username);
			PreparedStatement ps = con.prepareStatement("UPDATE AccountDetails SET Active = 'NO' WHERE Username = '" + username + "'");
			ps.executeUpdate();
			con.commit();
			response.sendRedirect(request.getContextPath() + "/UserReturn");
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

}
