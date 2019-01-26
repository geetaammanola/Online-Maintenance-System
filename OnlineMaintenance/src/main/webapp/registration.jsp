<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
<title>Registration</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<body>

	<nav id="mainNav"
		class="navbar navbar-inverse navbar-custom navbar-fixed-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> Menu <i
						class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand page-scroll" href="home.jsp">Online
					Maintenance</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="hidden"><a href="#page-top"></a></li>

					<li><a class="page-scroll" href="complain.jsp">Post
							Complain</a></li>

					<li><a class="page-scroll" href="Login.jsp">Login</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>



	<br>
	<br>
	<br>
	<br>



	<div class="container">
		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<div class="panel-title">Sign Up</div>
					<div
						style="float: right; font-size: 80%; position: relative; top: -10px">
						<!-- 	<a href="#"><text forecolor="white">Forgot password?</a> -->
					</div>
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<div style="display: none" id="login-alert"
						class="alert alert-danger col-sm-12"></div>


					<form class="form-horizontal" method="post" action="userLoginController" >



						<div class="form-group">
							<label for="firstname" class="col-md-3 control-label">First
								Name</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="fname"
									value="<c:out value="${userLogin.fname}" />"
									placeholder="First Name">
							</div>
						</div>


						<div class="form-group">
							<label for="lastname" class="col-md-3 control-label">Last
								Name</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="lname"
								value="<c:out value="${userLogin.lname}" />"
									placeholder="Last Name">
							</div>
						</div>


						<div class="form-group">
							<label for="email" class="col-md-3 control-label">Email</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="email"
								value="<c:out value="${userLogin.email}" />"
									placeholder="Email Address">
							</div>
						</div>


						<!-- 
						<div class="form-group">
							<label for="mobileno" class="col-md-3 control-label">Mobile
								No.</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="mobileno"
									placeholder="Mobile No.">
							</div>
						</div>



						<div class="form-group">
							<label for="address1" class="col-md-3 control-label">Line 1</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="l1"
									placeholder="Address">
							</div>
						</div>
						
						<div class="form-group">
							<label for="address" class="col-md-3 control-label">Line 2 </label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="l2"
									placeholder="Address">
							</div>
						</div>
						
						<div class="form-group">
							<label for="city" class="col-md-3 control-label">city </label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="city"
									placeholder="City">
							</div>
						</div>
						
						<div class="form-group">
							<label for="city" class="col-md-3 control-label">Pincode </label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="pin"
									placeholder="Pincode">
							</div>
						</div>
						
 -->

						<div class="form-group">
							<label for="password" class="col-md-3 control-label">Password</label>
							<div class="col-md-9">
								<input type="password" class="form-control" name="password"
									placeholder="password">
							</div>
						</div>

						<div class="form-group">
							<label for="confirm-password" class="col-md-3 control-label">Confirm
								Password</label>
							<div class="col-md-9">
								<input type="password" class="form-control" name="cpassword"
								
									placeholder="password">
							</div>
						</div>



						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<button id="btn-signup" type="submit" class="btn btn-primary">
									<i class="icon-hand-right"></i> &nbsp Sign Up
								</button>

							</div>
						</div>





					</form>



				</div>
			</div>
		</div>




		<div class="container">
			<h2>Modal Example</h2>
			<!-- Trigger the modal with a button -->
			<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
				data-target="#myModal">Open Modal</button>

			<!-- Modal -->
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Modal Header</h4>
						</div>
						<div class="modal-body">
							<p>Some text in the modal.</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">Close</button>
						</div>
					</div>

				</div>
			</div>

		</div>

		<%@include file="./shared/footer.jsp"%>
</body>
</html>



