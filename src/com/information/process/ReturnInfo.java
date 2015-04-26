package com.information.process;

import java.sql.*;
import com.information.personal.PersonalBean;
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
	private PersonalBean p;
	private Connection con = new DBConnection().connect();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
