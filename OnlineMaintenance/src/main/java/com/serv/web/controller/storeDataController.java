package com.serv.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.serv.web.dao.dataDAO;
import com.serv.web.modal.data;


public class storeDataController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
	 int id = Integer.parseInt(request.getParameter("id"));
	 dataDAO dao = new dataDAO();
	data d1 = dao.getData(id);
	 
	 request.setAttribute("data", d1);
		
		RequestDispatcher rd =request.getRequestDispatcher("showData.jsp");
		rd.forward(request,response);
		
		
	}

	
}
