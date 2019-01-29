<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show All Complains</title>
</head>
<body>
	<table border=1>
		<thead>
			<tr>
				<th>Complain Id</th>
				<th>Complainer</th>
				<th>Email</th>
				<th>MobileNo</th>
				<th>Date</th>
				<th>Address</th>
				<th>Category</th>
				<th>Description</th>

			</tr>
		</thead>
		<tbody>
		
		
		

		
		
			<c:forEach items="${complains}" var="complain">
				<tr>
					<td><c:out value="${complain.complainid}" /></td>
					<td><c:out value="${complain.complainer}" /></td>
					<td><c:out value="${complain.email}" /></td>
					<td><c:out value="${complain.mobileNo}" /></td>
					<td><c:out value="${complain.date}" /></td>
					<td><c:out value="${complain.address}" /></td>
					<td><c:out value="${complain.category}" /></td>
					<td><c:out value="${complain.Description}" /></td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
		<a href="ComplainController?action=insert">Add Complain</a>
	</p>
</body>
</html>