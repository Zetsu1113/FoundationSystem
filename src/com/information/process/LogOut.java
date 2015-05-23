package com.information.process;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LogOut
 */
@WebServlet("/Logout")
public class LogOut extends HttpServlet { // called when logging out (deletes cookies)
	private static final long serialVersionUID = 1L;
	private Cookie []ck;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ck = request.getCookies();
		ck[0].setMaxAge(0);
		response.addCookie(ck[0]);
		ck[1].setMaxAge(0);
		response.addCookie(ck[1]);
		ck[2].setMaxAge(0);
		response.addCookie(ck[2]);
		ck[3].setMaxAge(0);
		response.addCookie(ck[3]);
		
		request.getSession(false).setAttribute("status", "out");
		request.getRequestDispatcher("landingPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
