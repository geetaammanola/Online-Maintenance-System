package com.serv.web.DAOImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.serv.web.dao.EmployeeDAO;
import com.serv.web.modal.Employee;
import com.serv.web.util.DbUtil;

public class EmployeeDAOImpl implements EmployeeDAO {

	private Connection conn;

	public EmployeeDAOImpl() {
		conn = DbUtil.getConnection();
	}

	@Override
	public void addEmployee(Employee employee) {
		try {
			String query = "insert into employee (role, name, doj, email, mobileNo, address, dob) values (?,?,?,?,?,?,?)";
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setString(1, employee.getRole());
			preparedStatement.setString(2, employee.getName());
			preparedStatement.setDate(3,new java.sql.Date(employee.getDoj().getTime()));
			preparedStatement.setString(4, employee.getEmail());
			preparedStatement.setInt(5, employee.getMobileNo());
			preparedStatement.setString(6, employee.getAddress());
			//preparedStatement.setDate(7, new java.sql.Date(employee.getDob().getTime()));

			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteEmployee(int eid) {
		try {
			String query = "delete from employee where eid=?";
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setInt(1, eid);
			
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateEmployee(Employee employee) {
		try {
			String query = "update employee set role=?, name=?, doj=?, email=?, mobileNo=?, address=?,dob=? where eid=?";
			PreparedStatement preparedStatement = conn.prepareStatement(query);

			preparedStatement.setString(1, employee.getRole());
			preparedStatement.setString(2, employee.getName());
			preparedStatement.setDate(3, new java.sql.Date(employee.getDoj().getTime()));
			preparedStatement.setString(4, employee.getEmail());
			preparedStatement.setInt(5, employee.getMobileNo());
			preparedStatement.setString(6, employee.getAddress());
			preparedStatement.setDate(7, new java.sql.Date(employee.getDob().getTime()));
			preparedStatement.setInt(8, employee.getEid());
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Employee> getAllEmployee() {
		List<Employee> employees = new ArrayList<Employee>();
		try {
			Statement statement = conn.createStatement();
			ResultSet resultSet = statement.executeQuery("select * from employee");
			while (resultSet.next()) {
				Employee emp = new Employee();
				emp.setEid(resultSet.getInt("eid"));
				emp.setRole(resultSet.getString("role"));
				emp.setName(resultSet.getString("name"));
				emp.setDob(resultSet.getDate("doj"));
				emp.setEmail(resultSet.getString("email"));
				emp.setMobileNo(resultSet.getInt("mobileNo"));
				emp.setAddress(resultSet.getString("address"));
				emp.setDob(resultSet.getDate("dob"));

				employees.add(emp);
			}
			resultSet.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return employees;
	}

	@Override
	public Employee getEmployeeById(int eid) {
		Employee employee = new Employee();
		try {
			String query = "select * from employee where eid=?";
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setInt(1, eid);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {

				employee.setEid(resultSet.getInt("eid"));
				employee.setRole(resultSet.getString("role"));
				employee.setName(resultSet.getString("name"));
				employee.setDob(resultSet.getDate("doj"));
				employee.setEmail(resultSet.getString("email"));
				employee.setMobileNo(resultSet.getInt("mobileNo"));
				employee.setAddress(resultSet.getString("address"));
				employee.setDob(resultSet.getDate("dob"));

			}
			resultSet.close();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return employee;
	}

}
