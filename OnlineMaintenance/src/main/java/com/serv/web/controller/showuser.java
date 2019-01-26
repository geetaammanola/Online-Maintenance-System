package com.serv.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.serv.web.dao.userDAO;
import com.serv.web.modal.userLogin;



@WebServlet("/showuser")

public class showuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int id = Integer.parseInt(request.getParameter("101"));
		userDAO dao = new userDAO();
		userLogin u1 = dao.getUser(id);
		
		
		request.setAttribute("user", u1);
		
		RequestDispatcher rd = request.getRequestDispatcher("myComplain.jsp");
		rd.forward(request, response);
		
		
		

	}

	

}
