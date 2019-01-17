<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<div class="container">
	<div class="row">


		<br>
		<br>
		<br>


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



		<!-- ACTUAL PRODUCT  -->
		<div class="col-md-9">




			
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item active" aria-current="page">
					
					<strong>Your Complains
							Detail</strong></li>
							</div>
				</ol>
			</nav>


			<div class="container">
				<div class=" col-md-12  custyle">
					<table class="table table-striped custab">
						<thead class="grey lighten-2">

							<tr>
								<th>Sr.</th>
								<th>complain</th>
								<th>Description</th>
								<th class="text-center">Action</th>
							</tr>
						</thead>
						
						<tr>
							<td>1</td>
							<td>News</td>
							<td>News Cate</td>
							<td class="text-center"><a class='btn btn-Primary btn-mg'
								href="#">View Detail</a>
								
						</tr>
						<tr>
							<td>2</td>
							<td>Products</td>
							<td>Main Products</td>
							<td class="text-center"><a class='btn btn-Primary btn-mg'
								href="#">View Detail</a>
						</tr>
						<tr>
							<td>3</td>
							<td>Blogs</td>
							<td>Parent Blogs</td>
							<td class="text-center"><a class='btn btn-Primary btn-mg'
								href="#">View Detail</a>
						</tr>
					</table>
				</div>
			</div>


		</div>
	</div>