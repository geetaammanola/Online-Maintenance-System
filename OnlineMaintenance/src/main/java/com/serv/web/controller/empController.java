package com.serv.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.serv.web.dao.empDAO;
import com.serv.web.modal.emp;


/**
 * Servlet implementation class empController
 */
public class empController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static String INSERT_OR_EDIT = "/addEmp.jsp";
	private static String showEmp = "/emp.jsp";
	
	private empDAO dao;

	public empController() {
		super();
		dao = new empDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}
/*		String forward = "";
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("delete")) {
			int e_Id = Integer.parseInt(request.getParameter("eid"));
			dao.deleteEmp(e_Id);
			forward = showEmp;
			request.setAttribute("Emp", dao.getAllEmp());
			
		} else if (action.equalsIgnoreCase("edit")) {
			forward = INSERT_OR_EDIT;
			
			int e_Id = Integer.parseInt(request.getParameter("eid"));
			emp emp = dao.getEmpById(e_Id);
			request.setAttribute("emp", emp);
			
		} else if (action.equalsIgnoreCase("addEmp")) {
			forward = showEmp;
			request.setAttribute("Emp", dao.getAllEmp());
			
		} else {
			forward = INSERT_OR_EDIT;
		}

		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}*/

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		emp emp = new emp();
		
		/*emp.setE_name(request.getParameter("name"));
		emp.setE_email(request.getParameter("email"));*/
	/*	try {
			Date dob;
			try {
				dob = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("dob"));
			} catch (java.text.ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			emp.setE_dob(dob);
		} catch (ParseException e) {
			e.printStackTrace();
		}*/
		//emp.setE_email(request.getParameter("email"));
		//String e_id = request.getParameter("eid");
		
		
	//	if (e_id == null || e_id.isEmpty()) {
			dao.addEmp(emp);
			
	//	} 
		/*else {
			emp.setE_id(Integer.parseInt(e_id));

			dao.updateEmp(emp);
		}

		RequestDispatcher rd = request.getRequestDispatcher("emp.jsp");
		request.setAttribute("Emp", dao.getAllEmp());
		rd.forward(request, response);*/
	}

}
