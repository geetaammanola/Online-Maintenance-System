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
	<form action="ProductController" method="post">
		<fieldset>
			<div>
				<label for="productId">Product ID</label> <input type="text"
					name="productId" value="<c:out value="${product.productId}" />"
					readonly="readonly" placeholder="product ID" />
			</div>
			<div>
				<label for="productName">Product Name</label> <input type="text"
					name="productName" value="<c:out value="${product.productName}" />"
					placeholder="product Name" />
			</div>
			
			<div>
				<label for="InStock">inStock</label> <input type="text" name="inStock"
					value="<c:out value="${product.inStock}" />" placeholder="InStock" />
			</div>
			
			
			<div>
				<input type="submit" value="Submit" />
			</div>
		</fieldset>
	</form>
</body>
</html>
