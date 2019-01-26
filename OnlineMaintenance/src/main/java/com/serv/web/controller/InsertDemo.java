package com.serv.web.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.annotation.WebServlet;


@WebServlet("/insert")
public class InsertDemo {

	public static void main(String[] args)throws Exception {
		try {
			// create a mysql database connection
			String myDriver = "com.mysql.jdbc.Driver";
			String myUrl = "jdbc:mysql://localhost:3306/OnlineMaintenance";
			Class.forName(myDriver);
			Connection conn = DriverManager.getConnection(myUrl, "root", "root123");

			// the mysql insert statement
			String query = " insert into Emp (eid , name, email, designation, address, mobileNo)"
					+ " values (?, ?, ?,?, ?, ?)";

			// create the mysql insert preparedstatement

			PreparedStatement preparedStmt = conn.prepareStatement(query);
			preparedStmt.setInt(1, 104);
			preparedStmt.setString(2, "Hoja Yar");
			preparedStmt.setString(3, "please");
			preparedStmt.setString(4, "margayahu");
			preparedStmt.setString(5, "janana zoroori hai");
			preparedStmt.setInt(6, 00000000);

			// execute the preparedstatement
			preparedStmt.execute();

			System.out.println("Inserted Into DB");
			conn.close();
		} catch (Exception e) {
			System.err.println("Got an exception!");
			System.err.println(e.getMessage());
		}
	}

}
