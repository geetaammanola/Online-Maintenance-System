<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
<title>Post Your Complain</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	

<!-- <link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<script
	src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>


<style type="text/css">
.card-default {
	color: #333;
	background: linear-gradient(#fff, #ebebeb) repeat scroll 0 0 transparent;
	font-weight: 600;
	border-radius: 6px;
}


</style>


<script type="text/javascript">
	$(function() {
		$(".date").datepicker({
			autoclose : true,
			todayHighlight : true
		});
	});
</script>

</head>


<body>

	<%
			if (session.getAttribute("email") == null) {
				response.sendRedirect("Login.jsp");
			}
		%>




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
				<li><a class="page-scroll" href="myComplain.jsp">My Complain</a></li>

				<li><a class="page-scroll" href="logout">Logout</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
</div>
<!-- /.container-fluid -->
</nav>





		






		<br> <br> <br> <br>

	
	
<div class="container">
		<div id="loginbox" style="margin-top: 30px;"
			class="mainbox col-md-12  ">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<div class="panel-title">
					
					<div class="text-center" >Post Your Complain</div>
					</div> 
					<div
						style="float: right; font-size: 80%; position: relative; top: 10px">
						
					</div>
				</div>

				<div style="padding-top: 30px" class="panel-body">


				
						<div style="margin-bottom: 25px" class="input-group">

		<!--  <div class="container">
			<div id="accordion">
				<div class="row">
					<div class="col-lg-12">-->
					 
					 
				
					</div>
				</div>

				
					<div id="collapse1" class="collapse show">
						<div class="card-body">
							<div class="row">
								<div class="col-md-3 col-lg-4">
									<div class="form-group">
										<label class="control-label">Last Name</label> <input
											type="text" class="form-control" />
									</div>
								</div>
								<div class="col-md-1 col-lg-4">
									<div class="form-group">
										<label class="control-label">First Name</label> <input
											type="text" class="form-control" />
									</div>
								</div>
								<!--  <div class="col-md-1 col-lg-1">
								<div class="form-group">
									<label class="control-label">Middle.I</label> <input
										class="form-control" type="text" />
								</div>
							</div>-->

								<div class="col-md-2 col-lg-3">
									<div class="form-group">
										<label class="control-label">Date</label>
										<div class="input-group date">
											<input class="form-control" type="text" /> <span
												class="input-group-append">
												<button class="btn btn-outline-secondary" type="button">
													<i class="fa fa-calendar"></i>
												</button>
											</span>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-4 col-lg-4">
									<div class="form-group">
										<label class="control-label">Room No./Land Mark
											/Address</label> <input type="text" class="form-control" />
									</div>
								</div>
								<div class="col-md-2 col-lg-3">
									<div class="form-group">
										<label class="control-label">City</label> <input type="text"
											class="form-control" />
									</div>
								</div>

								<div class="col-md-3 col-lg-3">
									<div class="form-group">
										<label class="control-label">State</label> <input type="text"
											class="form-control" />
									</div>
								</div>

								<div class="col-md-3 col-lg-2">
									<div class="form-group">
										<label class="control-label">Zip Code</label> <input
											type="text" class="form-control" />
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-3 col-lg-12">
									<div class="form-group">
										<label class="control-label">Select </label> <select
											class="form-control" id="exampleFormControlSelect1">
											<option>AC</option>
											<option>COOLER</option>
											<option>FRIDGE</option>
											<option>ELECTRICITY</option>
											<option>PROJECTOR</option>
											<option>TV</option>
											<option>MICROWAVE</option>
										</select>
									</div>
								</div>
							</div>





							<div class="row">
								<div class="col-lg-12">
									<label class="control-label">Description Of Complain</label>


									<textarea rows="3" class="form-control"></textarea>
								</div>
							</div>

						</div>
					</div>
					`
				</div>
			</div>


			<br />

			<div class="row">
				<div class="col-lg-6">
					<div class="pull-right">
					<input  value="Save">
						<a href="#" class="btn btn-primary btn-lg"  type= "submit" id="btnSubmit"><i
							class="fa fa-save"></i> Save</a>

					</div>
				</div>
			</div>
		</div>
</body>
</html>