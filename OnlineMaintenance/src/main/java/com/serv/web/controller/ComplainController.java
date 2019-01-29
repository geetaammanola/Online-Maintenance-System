package com.serv.web.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.serv.web.DAOImpl.ComplainDAOImpl;
import com.serv.web.dao.ComplainDAO;
import com.serv.web.modal.Complain;

@WebServlet("/ComplainController")
public class ComplainController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ComplainDAO dao;
	public static final String addComplains = "/complain.jsp";
	public static final String myComplains = "/UserListComplains.jsp";

	public ComplainController() {
		dao = (ComplainDAO) new ComplainDAOImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String forward = "";
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("insert")) {
			forward = addComplains;
		} else {
			forward = myComplains;
			request.setAttribute("complains", dao.getAllComplains());
		}

	
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Complain complain = new Complain();

		complain.setComplainer(request.getParameter("complainer"));
		complain.setEmail(request.getParameter("email"));
		complain.setMobileNo(Integer.parseInt(request.getParameter("mobileNo")));
		//complain.setDate(request.getParameter("date"));
		
		 
		 try { 
			 Date date = new
		  SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("date"));
		  complain.setDate(date); 
		  } catch (ParseException e)
		 { e.printStackTrace(); 
		 }
		

		complain.setAddress(request.getParameter("address"));
		complain.setCategory(request.getParameter("category"));
		complain.setDescription(request.getParameter("Description"));

		String complainId = request.getParameter("complainid");

		if (complainId == null || complainId.isEmpty()) {

			dao.addComplain(complain);
		}else {
			
		}

		RequestDispatcher view = request.getRequestDispatcher(myComplains);
		request.setAttribute("complains", dao.getAllComplains());
		view.forward(request, response);
	}

}
