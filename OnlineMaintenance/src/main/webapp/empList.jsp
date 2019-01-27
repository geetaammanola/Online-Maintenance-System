
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show All Students</title>
</head>
<body>

	<table>
		<thead>
			<tr>
				<th>Emplyee ID</th>
				<th>Role</th>
				<th>Emplyee Name</th>
				<th>DOJ</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Address</th>
				<th>DOB</th>
				<th colspan="2">Action</th>
			</tr>
		</thead>
		<tbody>
		

		  <c:forEach items="${employees}" var="emp"> 
				<tr>
					<td><c:out value="${emp.eid}" /></td>
					<td><c:out value="${emp.role}" /></td>
					<td><c:out value="${emp.name}" /></td>
					<td><c:out value="${emp.doj}" /></td>
					<td><c:out value="${emp.email}" /></td>
					<td><c:out value="${emp.mobileNo}" /></td>
					<td><c:out value="${emp.address}" /></td>
					<td><c:out value="${emp.dob}" /></td>
					<td><a
						href="employeeController?action=edit&eid=<c:out value="${emp.eid }"/>">Update</a></td>
					<td><a
						href="employeeController?action=delete&eid=<c:out value="${emp.eid }"/>">Delete</a></td>
				</tr>
			  </c:forEach>
		</tbody>
	</table>
	<p>
		<a href="employeeController?action=insert">Add Student</a>
	</p>
	
	
</body>
</html>