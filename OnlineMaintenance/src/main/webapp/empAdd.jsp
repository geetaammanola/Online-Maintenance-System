

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Add New Student</title>

</head>
<body>
	<form action="employeeController" method="post">
		<fieldset>
			<div>
				<label for="eid">Emp ID</label> <input type="text"
					name="eid" readonly="readonly" placeholder="eid" />
			</div>
			<div>
				<label for="role">Role</label> <input type="text"
					name="role" value="<c:out value="${employee.role}" />"
					placeholder="role" />
			</div>
			<div>
				<label for="Name">Name</label> <input type="text"
					name="name" value="<c:out value="${employee.name}" />"
					placeholder="Name" />
			</div>
			<div>
				<label for="doj">DOJ</label> <input type="text" name="doj"
					value="<c:out value="${employee.doj}" />" placeholder="Course" />
			</div>
			<div>
				<label for="email">Email</label> <input type="text" name="email"
					value="<c:out value="${employee.email}" />" placeholder="Year" />
			</div>
			<div>
			
			
			<label for="mobileNo">Mobile No</label> <input type="text"
					name="mobileNo" value="<c:out value="${employee.mobileNo}" />"
					placeholder="Mobile" />
			</div>
			
			
			<div>
				<label for="address">Address</label> <input type="text" name="address"
					value="<c:out value="${employee.address}" />" placeholder="address" />
			</div>
			<div>
				<label for="dob">DOB</label> <input type="text" name="dob"
					value="<c:out value="${employee.dob}" />" placeholder="dob" />
			</div>
			
			<div>
				<input type="submit" value="Submit" />
			</div>
		</fieldset>
	</form>
</body>
</html>