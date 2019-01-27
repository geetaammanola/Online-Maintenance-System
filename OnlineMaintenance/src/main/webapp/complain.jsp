<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
					<li><a class="page-scroll" href="myComplain.jsp">My
							Complain</a></li>

					<li><a class="page-scroll" href="logout">Logout</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<br>
	<br>




	<div class="jumbotron jumbotron-sm">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-lg-12">
					<h1 class="h1">
						Post Comnplain  
					</h1>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-lg-12">
				<div class="well well-lg">
					<form method="post" action="ComplainController">
						<div class="row">
							<div class="col-md-6">
							
					
								<div class="form-group">
									<label for="name"> Complainer Name</label>
									
										
									
									 <input type="text" name="complainer"
										class="form-control" placeholder="Enter name"
										required="required" />
								</div>
								<div class="form-group">
									<label for="email"> Email Address</label>
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-envelope"></span> </span>
											 <input
											type="email" name="email" class="form-control" id="email"
											placeholder="Enter email" required="required" />
									</div>
								</div>

								<div class="form-group">
									<label for="email"> Mobile</label>

									<div class="input-group">
										<div class="input-group-addon">
										<span
											class="glyphicon glyphicon-phone"></span>
										</div>
										<input type="text" name="mobileNo" class="form-control" 
											placeholder="Phone" >
									</div>
								</div>
								
								
								 <div class="form-group">
								 <label for="name"> Date</label>
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                            <input type="date" name="date"  class="form-control" placeholder="Date of Birth" />
                        </div>
                    </div>
                    
                    <div class="col-md-12">
               
								<div class="form-group">
									<label for="name"> Address</label>
									<textarea name="address" id="message" class="form-control"
										rows="3" cols="25" required="required" placeholder="Address"></textarea>
								</div>
							</div>

							</div>
							
							
							<div class="col-md-6">
								<div class="form-group">
									<label for="subject"> Select Complain Category</label><!-- <select id="subject"
									
									 <label class="control-label">Select Complain Category </label> -->
									<select class="form-control" name="category" required="required">
										<option value= "AC">AC</option>
										<option value= "COOLER">COOLER</option>
										<option value= "FRIDGE">FRIDGE</option>
										<option value= "ELECTRICITY">ELECTRICITY</option>
										<option value= "PROJECTOR">PROJECTOR</option>
										<option value= "TV">TV</option>
										<option value= "MICROWAVE">MICROWAVE</option>
									</select>
									<!--  
										name="subject" class="form-control" required="required">
										<option value="na" selected="">Choose One:</option>
										<option value="service">General Customer Service</option>
										<option value="suggestions">Suggestions</option>
										<option value="product">Product Support</option>
									</select>-->
								</div>
							
							
							
							
								<div class="form-group">
									<label for="name"> Complain Description</label>
									<textarea name="Description" id="message" class="form-control"
										rows="3" cols="25" required="required" placeholder="Description"></textarea>
								</div>
							</div>


							
							<div class="col-md-12">
								<button type="submit" class="btn btn-success pull-right"
									id="btnContactUs">Post Complain</button>
							</div>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>







	<!-- 
	<div class="container">
		<div id="accordion">



			<div class="row">
				<div class="page-header">
					<h1 align="center">
						<strong>Post Your Complain</strong>
					</h1>
				</div>

			</div>


			<form method="post" action="ComplainController">

				<div id="collapse1" class="collapse show">
					<div class="card-body">
					
						<div class="row">
                        <div class="col-md-2 col-lg-3">
								<div class="form-group">
									<label class="control-label">Complainer Name</label> <input
										type="text" name="complainer" class="form-control" />
								</div>
							</div>
							
							<div class="col-md-2 col-lg-3">
								<div class="form-group">
									<label class="control-label">Email Address</label> <input
										type="text" name="email" class="form-control" />
								</div>
							</div>
							
							<div class="col-md-2 col-lg-3">
								<div class="form-group">
									<label class="control-label">Mobile No.</label> <input
										type="text" name="mobileNo" class="form-control" />
								</div>
							</div>


							<div class="col-md-2 col-lg-3">
								<div class="form-group">
									<label class="control-label">Date</label>
									<div class="input-group date">
										<input class="form-control" type="text" name="date" /> <span
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
							<div class="col-lg-12">
								<label class="control-label">Address</label>
								<textarea rows="2" class="form-control" name="address"></textarea>
							</div>
						</div>


						<br />

						<div class="row">
							<div class="col-md-3 col-lg-12">
								<div class="form-group">
									<label class="control-label">Select Complain Category </label>
									<select class="form-control" name="category">
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
								<textarea rows="3" name="description" class="form-control"></textarea>
							</div>
						</div>
	<br />

						<div class="row">
							<div class="col-lg-6">
								<div class="pull-right">

									<a href="ComplainController" class="btn btn-primary btn-lg" type="submit"
										><i class="fa fa-save"></i> Save</a>

								</div>
							</div>
						</div>



					</div>
				</div>

			</form>
		</div>
	</div> -->

</body>
</html>