package com.serv.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.serv.web.dao.employeeDAO;
import com.serv.web.modal.emp;

/**
 * Servlet implementation class employeeController
 * 
 * 
 
 */
@WebServlet("/employeeController")
public class employeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("eid"));
		employeeDAO dao = new employeeDAO();
		emp e1 = dao.getEmployeeDAO(id);
		
		request.setAttribute("emp", e1);
		
		RequestDispatcher rd = request.getRequestDispatcher("add.jsp");
		rd.forward(request, response);

		//HttpSession session = request.getSession();
		//session.setAttribute("alien", a1);

		//response.sendRedirect("showAlien.jsp");
		
		

		
	}

}
