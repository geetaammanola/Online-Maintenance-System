<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>






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

	<%@include file="./shared/navbar.jsp"%>


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

					<form id="Signupform" class="form-horizontal" role="form">



						<div class="form-group">
							<label for="firstname" class="col-md-3 control-label">First
								Name</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="firstname"
									placeholder="First Name">
							</div>
						</div>


						<div class="form-group">
							<label for="lastname" class="col-md-3 control-label">Last
								Name</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="lastname"
									placeholder="Last Name">
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-md-3 control-label">Email</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="email"
									placeholder="Email Address">
							</div>
						</div>

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
								<input type="text" class="form-control" name="address"
									placeholder="Address">
							</div>
						</div>
						
						<div class="form-group">
							<label for="address" class="col-md-3 control-label">Line 2 </label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="address"
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
								<input type="password" class="form-control" name="password"
									placeholder="password">
							</div>
						</div>



						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<button id="btn-signup" type="button" class="btn btn-primary">
									<i class="icon-hand-right"></i> &nbsp Sign Up
								</button>
							
							</div>
						</div>

						


						
					</form>



				</div>
			</div>
		</div>



		<div class="container">
			<div id="signupbox" style="display: none; margin-top: 50px"
				class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<div class="panel-title">Sign Up</div>
						<div
							style="float: right; font-size: 85%; position: relative; top: -10px">
							<a id="signinlink" href="#"
								onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign
								In</a>
						</div>
					</div>
					<div class="panel-body">
						<form id="signupform" class="form-horizontal" role="form">

							<div id="signupalert" style="display: none"
								class="alert alert-danger">
								<p>Error:</p>
								<span></span>
							</div>



							<div class="form-group">
								<label for="email" class="col-md-3 control-label">Email</label>
								<div class="col-md-9">
									<input type="text" class="form-control" name="email"
										placeholder="Email Address">
								</div>
							</div>

							<div class="form-group">
								<label for="firstname" class="col-md-3 control-label">First
									Name</label>
								<div class="col-md-9">
									<input type="text" class="form-control" name="firstname"
										placeholder="First Name">
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-md-3 control-label">Last
									Name</label>
								<div class="col-md-9">
									<input type="text" class="form-control" name="lastname"
										placeholder="Last Name">
								</div>
							</div>
							<div class="form-group">
								<label for="password" class="col-md-3 control-label">Password</label>
								<div class="col-md-9">
									<input type="password" class="form-control" name="passwd"
										placeholder="Password">
								</div>
							</div>

							<div class="form-group">
								<label for="icode" class="col-md-3 control-label">Invitation
									Code</label>
								<div class="col-md-9">
									<input type="text" class="form-control" name="icode"
										placeholder="">
								</div>
							</div>

							<div class="form-group">
								<!-- Button -->
								<div class="col-md-offset-3 col-md-9">
									<button id="btn-signup" type="button" class="btn btn-primary">
										<i class="icon-hand-right"></i> &nbsp Sign Up
									</button>
									<span style="margin-left: 8px;">or</span>
								</div>
							</div>

							<!--  	<div style="border-top: 1px solid #999; padding-top: 20px"
							class="form-group">

							<div class="col-md-offset-3 col-md-9">
								<button id="btn-fbsignup" type="button" class="btn btn-primary">
									<i class="icon-facebook"></i>   Sign Up with Facebook
								</button>
							</div>-->
						</form>
					</div>




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
		
		<%@include file="./shared/footer.jsp" %>
	
</body>
</html>



