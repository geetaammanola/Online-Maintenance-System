package com.serv.web.dao;

import java.util.List;

import com.serv.web.modal.Employee;

public interface EmployeeDAO {

	public void addEmployee(Employee employee);

	public void deleteEmployee(int eid);

	public void updateEmployee(Employee employee);

	public List<Employee> getAllEmployee();

	public Employee getEmployeeById(int eid);

}
