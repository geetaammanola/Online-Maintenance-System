
<%@page import="com.serv.web.modal.emp"%>
<%@page import="com.serv.web.modal.data"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">


	<%
		emp e1 = (emp) request.getAttribute("emp");

		out.println(e1);
	%>
	<%
		data d1 = (data) request.getAttribute("data");

		out.println(d1);
	%>

</body>
</html>