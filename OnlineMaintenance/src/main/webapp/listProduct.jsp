<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<th>product ID</th>
				<th>product Name</th>
			
				<th>InStock</th>
				<th colspan="2">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${products}" var="product">
				<tr>
					<td><c:out value="${product.productId}" /></td>
					<td><c:out value="${product.productName}" /></td>
					<td><c:out value="${product.inStock}" /></td>
					
					<td><a
						href="ProductController?action=edit&productId=<c:out value="${product.productId }"/>">Update</a></td>
					<td><a
						href="ProductController?action=delete&productId=<c:out value="${product.productId }"/>">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
		<a href="ProductController?action=insert">Add Product</a>
	</p>
</body>
</html>
