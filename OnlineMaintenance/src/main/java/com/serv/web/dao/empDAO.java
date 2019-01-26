package com.serv.web.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.serv.web.modal.emp;
import com.serv.web.util.DbUtil;

public class empDAO {

	private Connection connection;

	public empDAO() {
		connection = DbUtil.getConnection();
	}

	public void addEmp(emp emp) {
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(
					"insert into Emp(eid,name,email,designation,address,mobileNo) values (?, ?, ?,?,?, ? )");
			// Parameters start with 1

			
			
			
			preparedStatement.setInt(1, 104);
			preparedStatement.setString(2, "karan");
			preparedStatement.setString(3, "ka@gmail.com");
			preparedStatement.setString(4, "Worker");
			// preparedStatement.setDate(5, new java.sql.Date(emp.getE_joining()));
			// preparedStatement.setDate(6, new java.sql.Date(emp.getE_dob()));

			preparedStatement.setString(5, "banglore");
			preparedStatement.setInt(6, 987456321);
			
			/*preparedStatement.setInt(1, emp.getE_id());
			preparedStatement.setString(2, emp.getE_name());
			preparedStatement.setString(3, emp.getE_email());
			preparedStatement.setString(4, emp.getE_designation());
			// preparedStatement.setDate(5, new java.sql.Date(emp.getE_joining()));
			// preparedStatement.setDate(6, new java.sql.Date(emp.getE_dob()));

			preparedStatement.setString(7, emp.getE_address());
			preparedStatement.setInt(8, emp.getE_mobileNo());*/

			preparedStatement.executeUpdate();
		

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	
	/*
	public void deleteEmp(int eid) {
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("delete from Emp where eid=?");
			// Parameters start with 1
			preparedStatement.setInt(1, eid);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void updateEmp(emp emp) {
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(
					"update Emp set name=?, email=?, designation=? ,address=?,mobileNo=? " + "where eid=?");
			// Parameters start with 1

			preparedStatement.setInt(1, emp.getE_id());
			preparedStatement.setString(2, emp.getE_name());
			preparedStatement.setString(3, emp.getE_email());
			preparedStatement.setString(4, emp.getE_designation());
			// preparedStatement.setDate(5, new java.sql.Date(emp.getE_joining()));
			// preparedStatement.setDate(6, new java.sql.Date(emp.getE_dob()));

			preparedStatement.setString(7, emp.getE_address());
			preparedStatement.setInt(8, emp.getE_mobileNo());

			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<emp> getAllEmp() {
		List<emp> em = new ArrayList<emp>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from Emp");
			while (rs.next()) {
				emp e = new emp();
				e.setE_id(rs.getInt("eid"));
				e.setE_name(rs.getString("name"));
				e.setE_email(rs.getString("email"));
				e.setE_designation(rs.getString("designation"));
				// e.setE_joining(rs.getString("joining"));

				// e.setE_dob(rs.getDate("dob"));
				e.setE_address(rs.getString("address"));
				e.setE_mobileNo(rs.getInt("mobileNo"));
				 em.add(e);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return em;
	}

	public emp getEmpById(int eid) {
		emp e = new emp();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("select * from Emp where eid=?");
			preparedStatement.setInt(1, eid);
			ResultSet rs = preparedStatement.executeQuery();

			if (rs.next()) {

				e.setE_id(rs.getInt("eid"));
				e.setE_name(rs.getString("name"));
				e.setE_email(rs.getString("email"));
				e.setE_designation(rs.getString("designation"));
				// e.setE_joining(rs.getString("joining"));

				// e.setE_dob(rs.getDate("dob"));
				e.setE_address(rs.getString("address"));
				e.setE_mobileNo(rs.getInt("mobileNo"));

			}
		} catch (SQLException ex) {
			
		}

		return e;
	}*/
}
