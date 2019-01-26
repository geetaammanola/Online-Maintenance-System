package com.serv.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.serv.web.DAOImpl.userLoginDAOImpl;
import com.serv.web.dao.userLoginDAO;
import com.serv.web.modal.userLogin;

/**
 * Servlet implementation class userLoginController
 */

public class userLoginController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private userLoginDAO dao;

	public userLoginController() {
		dao = (userLoginDAO) new userLoginDAOImpl();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		userLogin userLogin = new userLogin();
		userLogin.setFname(request.getParameter("fname"));
		userLogin.setLname(request.getParameter("lname"));
		userLogin.setEmail(request.getParameter("email"));
		userLogin.setPassword(request.getParameter("password"));

		String userid = request.getParameter("userid");

		if (userid == null || userid.isEmpty())
			dao.addUser(userLogin);
		
		RequestDispatcher view = request.getRequestDispatcher("/Login.jsp");

		view.forward(request, response);
	}
}
