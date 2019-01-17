package com.serv.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/login")
public class login extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uname = request.getParameter("user");
		String pass = request.getParameter("password");
		
		if(uname.equals("geeta") && pass.equals("123"))
		{
			HttpSession session =request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("complain.jsp");
		}
		else
		{
			response.sendRedirect("Login.jsp");
		}

		// RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		// rd.forward(request, response);

		// HttpSession session = request.getSession();
		// session.setAttribute("alien", a1);

		// response.sendRedirect("showAlien.jsp");

	}

}