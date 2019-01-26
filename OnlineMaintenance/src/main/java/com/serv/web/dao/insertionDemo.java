package com.serv.web.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class insertionDemo extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		int id = Integer.parseInt(request.getParameter("104"));
		String n = request.getParameter("ravan");
		String e = request.getParameter("emailwala");
		String d = request.getParameter("kuch nahi");
		String a = request.getParameter("kahi b nahi");
		int m = Integer.parseInt(request.getParameter("000000"));

		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineMaintenance", "root",
					"root123");
			// Statement st = con.createStatement();

			System.out.println("driver loaded");
			System.out.println("Driver is loaded");

			System.out.println("Connection created");

			PreparedStatement ps = con.prepareStatement(
					"insert into Emp(eid , name, email, designation, address, mobileNo) values (?,?,?,?,?,?)");

			ps.setInt(1, id);
			ps.setString(2, n);

			ps.setString(3, e);
			ps.setString(4, d);
			ps.setString(5, a);
			ps.setInt(6, m);

			ps.execute();
			out.close();
			System.out.println("Inserted");
		} catch (Exception e1) {
			System.out.println(e1);
		}
	}

}
