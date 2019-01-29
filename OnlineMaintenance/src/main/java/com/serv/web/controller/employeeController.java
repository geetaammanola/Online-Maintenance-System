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

import com.serv.web.DAOImpl.EmployeeDAOImpl;
import com.serv.web.dao.EmployeeDAO;
import com.serv.web.modal.Employee;



@WebServlet("/employeeController")
public class employeeController extends HttpServlet {
	private EmployeeDAO dao;
	private static final long serialVersionUID = 1L;
	public static final String lIST = "/empList.jsp";
	public static final String INSERT = "/empAdd.jsp";

	public employeeController() {
		dao = (EmployeeDAO) new EmployeeDAOImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String forward = "";
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("delete")) {
			forward = lIST;
			int eid = Integer.parseInt(request.getParameter("eid"));
			dao.deleteEmployee(eid);
			request.setAttribute("employees", dao.getAllEmployee());
		} else if (action.equalsIgnoreCase("edit")) {
			forward = INSERT;
			int eid = Integer.parseInt(request.getParameter("eid"));
			Employee employee = dao.getEmployeeById(eid);
			request.setAttribute("employee", employee);
		} else if (action.equalsIgnoreCase("insert")) {
			forward = INSERT;
		} else {
			forward = lIST;
			request.setAttribute("employees", dao.getAllEmployee());
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}
	
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Employee employee = new Employee();
		
		
		
		employee.setRole(request.getParameter("role"));
		employee.setName(request.getParameter("name"));
		//employee.setDoj(request.getParameter("doj"));
		
		try {
			Date doj = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("doj"));
			employee.setDoj(doj);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		
		employee.setEmail(request.getParameter("email"));
		employee.setMobileNo(Integer.parseInt(request.getParameter("mobileNo")));
		employee.setAddress(request.getParameter("address"));
		//employee.setDob(request.getParameter("dob"));
		
		try {
			Date dob = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("dob"));
			employee.setDob(dob);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		
		String eid = request.getParameter("eid");

		if (eid == null || eid.isEmpty())
			dao.addEmployee(employee);
		else {
			employee.setEid(Integer.parseInt(eid));
			dao.updateEmployee(employee);
		}
		RequestDispatcher view = request.getRequestDispatcher(lIST);
		request.setAttribute("employees", dao.getAllEmployee());
		view.forward(request, response);
	}
		
	}


