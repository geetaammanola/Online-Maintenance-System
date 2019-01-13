<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
 <link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<!-- Navigation -->
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

				<li><a class="page-scroll" href="userComplain.jsp"> My
						Complain</a></li>
			
				<li><a class="page-scroll" href="Login.jsp">Logout</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>

<div class="container">
	<div class="row">
		<div class="col-md-5  toppad  pull-right col-md-offset-3 ">
			<A href="edit.html">Edit Profile</A> <A href="edit.html">Logout</A>
			<br>
			<p class=" text-info">May 05,2014,03:00 pm</p>
		</div>
		<div
			class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">


			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Sheena Shrestha</h3>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-md-3 col-lg-3 " align="center">
							<img alt="User Pic"
								src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png"
								class="img-circle img-responsive">
						</div>

						<!--<div class="col-xs-10 col-sm-10 hidden-md hidden-lg"> <br>
                  <dl>
                    <dt>DEPARTMENT:</dt>
                    <dd>Administrator</dd>
                    <dt>HIRE DATE</dt>
                    <dd>11/12/2013</dd>
                    <dt>DATE OF BIRTH</dt>
                       <dd>11/12/2013</dd>
                    <dt>GENDER</dt>
                    <dd>Male</dd>
                  </dl>
                </div>-->
						<div class=" col-md-9 col-lg-9 ">
							<table class="table table-user-information">
								<tbody>
									<tr>
										<td>Department:</td>
										<td>Programming</td>
									</tr>
									<tr>
										<td>Hire date:</td>
										<td>06/23/2013</td>
									</tr>
									<tr>
										<td>Date of Birth</td>
										<td>01/24/1988</td>
									</tr>

									<tr>
									<tr>
										<td>Gender</td>
										<td>Female</td>
									</tr>
									<tr>
										<td>Home Address</td>
										<td>Kathmandu,Nepal</td>
									</tr>
									<tr>
										<td>Email</td>
										<td><a href="mailto:info@support.com">info@support.com</a></td>
									</tr>
									<td>Phone Number</td>
									<td>123-4567-890(Landline)<br>
									<br>555-4567-890(Mobile)
									</td>

									</tr>

								</tbody>
							</table>

							<a href="#" class="btn btn-primary">Edit Profile</a> &nbsp &nbsp
							 <a
								href="#" class="btn btn-primary">Back</a>
						</div>
					</div>
				</div>
				<div class="panel-footer">
					<a data-original-title="Broadcast Message" data-toggle="tooltip"
						type="button" class="btn btn-sm btn-primary"><i
						class="glyphicon glyphicon-envelope"></i></a> <span class="pull-right">
						<a href="edit.html" data-original-title="Edit this user"
						data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i
							class="glyphicon glyphicon-edit"></i></a> <a
						data-original-title="Remove this user" data-toggle="tooltip"
						type="button" class="btn btn-sm btn-danger"><i
							class="glyphicon glyphicon-remove"></i></a>
					</span>
				</div>

			</div>
		</div>
	</div>
</div>