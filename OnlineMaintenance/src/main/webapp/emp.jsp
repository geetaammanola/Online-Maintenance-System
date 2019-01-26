    <%@page import="com.serv.web.modal.emp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Show All Employee</title>

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>

<body>

	<div class="container">
		<div class="row">

			<!-- SIDEBAR DISPLAY -->
			<div class="col-md-3">

				<%@include file="./sidebar.jsp"%>
			</div>

			<br> <br> <br>







			<!-- ACTUAL PRODUCT  -->
			<div class="col-md-9">




				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">DashBoard</a></li>
					<li class="breadcrumb-item active" aria-current="page">Employee
						List</li>
				</ol>
				</nav>


				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item active" aria-current="page"><strong>Employee
							Details</strong></li>
				</ol>
				</nav>


				<div class="container">
					<div class="row col-md-10  custyle">

						<table class="table table-striped custab">
							<thead>

								<class ="btn btn-primary btn-xs pull-right" a> <b>+</b>New
								Employee</a>
								<tr>
									<th>ID</th>
									<th>Name</th>
									<th>E-mail</th>
									<th>Designation</th>

									<th>Address</th>
									<th>Mobie No.</th>
									<th class="text-center">Action</th>
								</tr>
							</thead>



						

							<tr>
								<td>1</td>
								<td>Surya</td>
								<td>s@gmail.com</td>
								<td>engineer</td>

								<td>Mumbai</td>
								<td>369852147</td>
								<td><button type="button" data-toggle="modal"
										data-target="#edit" data-uid="1"
										class="update btn btn-primary btn-sm">
										<span class="glyphicon glyphicon-pencil"></span>
									</button></td>
								<td><button type="button" data-toggle="modal"
										data-target="#delete" data-uid="1"
										class="delete btn btn-danger btn-sm">
										<span class="glyphicon glyphicon-trash"></span>
									</button></td>
							<tbody>
								<c:forEach items="${Emp}" var="emp">
									<tr>
										<td><c:out value="${emp.eid}" /></td>
										<td><c:out value="${emp.name}" /></td>
										<td><c:out value="${emp.email}" /></td>
										<td><c:out value="${emp.designation}" /></td>
										<td><c:out value="${emp.address}" /></td>
										<td><c:out value="${emp.mobileNo}" /></td>
										<td><a
											href="empController?action=edit&eid=<c:out value="${emp.eid}"/>">Update</a></td>
										<td><a
											href="empController?action=delete&eid=<c:out value="${emp.eid}"/>">Delete</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>




						<!-- 	<tr>
						<td>1</td>
						<td>Surya</td>
						<td>s@gmail.com</td>
						<td>engineer</td>
						<td>11-jan-2015</td>
						<td>11-oct-75</td>
						<td>Mumbai</td>
						<td>369852147</td>
						<td><button type="button" data-toggle="modal"
								data-target="#edit" data-uid="1"
								class="update btn btn-primary btn-sm">
								<span class="glyphicon glyphicon-pencil"></span>
							</button></td>
						<td><button type="button" data-toggle="modal"
								data-target="#delete" data-uid="1"
								class="delete btn btn-danger btn-sm">
								<span class="glyphicon glyphicon-trash"></span>
							</button></td>

						<td class="text-center"><a class='btn btn-info btn-xs'
							href="#"><span class="glyphicon glyphicon-pencil"></span>
								Edit</a> <a href="#" class="btn btn-danger btn-xs"><span
								class="glyphicon glyphicon-remove"></span> Del</a></td>
					</tr>
					<tr>
						<td>2</td>
						<td>kumar</td>
						<td>k@gmail.com</td>
						<td>engineer</td>
						<td>18-jan-2016</td>
						<td>19-nov-88</td>
						<td>Mumbai</td>
						<td>147854965</td>
						<td class="text-center"><a class='btn btn-info btn-xs'
							href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a>
							<a href="#" class="btn btn-danger btn-xs"><span
								class="glyphicon glyphicon-remove"></span> Del</a></td>
					</tr>
					<tr>
						<td>3</td>
						<td>rishi</td>
						<td>r@gmail.com</td>
						<td>accountant</td>
						<td>18-jan-2016</td>
						<td>19-nov-88</td>
						<td>Mumbai</td>
						<td>147854965</td>
						<td class="text-center"><a class='btn btn-info btn-xs'
							href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a>
							<a href="#" class="btn btn-danger btn-xs"><span
								class="glyphicon glyphicon-remove"></span> Del</a></td>
					</tr>
					
					
					
					
				

					</table>
					-->

						<p>
							<a href="UserController?action=insert">Add User</a>
						</p>
					</div>
				</div>



			</div>
		</div>
	</div>
</body>
</html>