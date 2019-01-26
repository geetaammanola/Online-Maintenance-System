package com.serv.web.controller;

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.serv.web.util.DbUtil;

/**
 * Servlet implementation class UserLoginSer
 */
@WebServlet("/UserLoginSer")
public class UserLoginSer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Connection conn;

	public UserLoginSer() {
		conn = DbUtil.getConnection();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// Connect to mysql and verify username password

		try {
			// gets a new connection

			PreparedStatement ps = conn
					.prepareStatement("select email,password from userLogin where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				response.sendRedirect("complain.jsp");
				return;
			}
			response.sendRedirect("Login.jsp");
			return;

		} catch (SQLException e) {
		
			e.printStackTrace();
		}
	}

}
