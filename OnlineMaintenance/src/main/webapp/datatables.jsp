<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#"
	xmlns:fb="https://www.facebook.com/2008/fbml">
<head>


<title>Admin Dashboard</title>







<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script language="JavaScript"
	src="https://code.jquery.com/jquery-1.11.1.min.js"
	type="text/javascript"></script>
<script language="JavaScript"
	src="https://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"
	type="text/javascript"></script>
<script language="JavaScript"
	src="https://cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.js"
	type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css"
	href="http://cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css">










<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<script>
	$(document).ready(function() {
		$('#datatable').dataTable();

		$("[data-toggle=tooltip]").tooltip();

	});
</script>

<style>
.pagination>li {
	display: inline;
	padding: 0px !important;
	margin: 0px !important;
	border: none !important;
}

.modal-backdrop {
	z-index: -1 !important;
}
/*
Fix to show in full screen demo
*/
iframe {
	height: 700px !important;
}

.btn {
	display: inline-block;
	padding: 6px 12px !important;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
}

.btn-primary {
	color: #fff !important;
	background: #428bca !important;
	border-color: #357ebd !important;
	box-shadow: none !important;
}

.btn-danger {
	color: #fff !important;
	background: #d9534f !important;
	border-color: #d9534f !important;
	box-shadow: none !important;
}
</style>
</head>



<body>



	<div>Header</div>


	<div class="container">
		<div class="row">



			<h2 class="text-center">&nbsp Admin DashBoard</h2>
		</div>


		<div class="row">
			<div class="col-lg-3 sidebar">
				<div class="mini-submenu">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</div>
				<div class="list-group">
					<span href="#" class="list-group-item active"> Submenu <span
						class="pull-right" id="slide-submenu"> <i
							class="fa fa-times"></i>
					</span>
					</span> <a href="#" class="list-group-item"> <i
						class="fa fa-comment-o"></i> employee
					</a> <a href="emp.jsp" class="list-group-item"> <i
						class="fa fa-search"></i> Lorem ipsum
					</a> <a href="#" class="list-group-item"> <i class="fa fa-user"></i>
						Lorem ipsum
					</a> <a href="#" class="list-group-item"> <i
						class="fa fa-folder-open-o"></i> Lorem ipsum <span class="badge">14</span>
					</a> <a href="#" class="list-group-item"> <i
						class="fa fa-bar-chart-o"></i> Lorem ipsumr <span class="badge">14</span>
					</a> <a href="#" class="list-group-item"> <i class="fa fa-envelope"></i>
						Lorem ipsum
					</a>
				</div>
			</div>











			<div class="col-lg-9 ">
				<div class="col-lg-9 ">

					<!-- <div class="col-sm-9">Menu</div>
			<div class="col-sm-9"> -->

					<div class="row">
					
					 <a href="#" class="btn btn-primary btn-xs pull-right"><b>+</b> Add new categories</a>

						<div class="pull-right">
							<button class="btn btn-success btn-xs" data-title="Delete"
								data-toggle="modal" data-target="#create">
								Create Member <span class="glyphicon glyphicon-plus"></span>
							</button>
						</div>

						<div class="float-left">
							<p data-placement="top" data-toggle="tooltip"
								title="New Employee">
								<button class="btn btn-success btn-xs" data-title="Delete"
									data-toggle="modal" data-target="#create">
									Create Member <span class="glyphicon glyphicon-plus"></span>
								</button>
							</p>
						</div>


						<div class="pull-right">
							<p data-placement="top" data-toggle="tooltip" title="Delete">
								<button class="btn btn-success btn-xs" data-title="Delete"
									data-toggle="modal" data-target="#create">
									Create Member <span class="glyphicon glyphicon-plus"></span>
								</button>
							</p>
						</div>

						<br> <br> <br> <br>


						<div class="col-md-9">


							<table id="datatable" class="table table-striped table-bordered"
								cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>Name</th>
										<th>Position</th>
										<th>Office</th>
										<th>Age</th>
										<th>Start date</th>
										<th>Salary</th>
										<th>Edit</th>
										<th>Delete</th>
									</tr>
								</thead>

								<tfoot>
									<tr>
										<th>Name</th>
										<th>Position</th>
										<th>Office</th>
										<th>Age</th>
										<th>Start date</th>
										<th>Salary</th>
										<th>Edit</th>
										<th>Delete</th>
									</tr>
								</tfoot>

								<tbody>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>

									<tr>
										<td>Jack Smith</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>60</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>Edinburgh</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
									</tr>
								</tbody>
							</table>


						</div>
					</div>
				</div>

				<div class="modal fade" id="create" tabindex="-1" role="dialog"
					aria-labelledby="edit" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
								<h4 class="modal-title custom_align" id="Heading">Edit Your
									Detail</h4>
							</div>
							<div class="modal-body">
								<div class="form-group">
									<input class="form-control " type="text"
										placeholder="Tiger Nixon">
								</div>
								<div class="form-group">

									<input class="form-control " type="text"
										placeholder="System Architect">
								</div>
								<div class="form-group">


									<input class="form-control " type="text"
										placeholder="Edinburgh">

								</div>
							</div>
							<div class="modal-footer ">
								<button type="button" class="btn btn-warning btn-lg"
									style="width: 100%;">
									<span class="glyphicon glyphicon-ok-sign"></span> Update
								</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>

				<div class="modal fade" id="edit" tabindex="-1" role="dialog"
					aria-labelledby="edit" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
								<h4 class="modal-title custom_align" id="Heading">Edit Your
									Detail</h4>
							</div>
							<div class="modal-body">
								<div class="form-group">
									<input class="form-control " type="text"
										placeholder="Tiger Nixon">
								</div>
								<div class="form-group">

									<input class="form-control " type="text"
										placeholder="System Architect">
								</div>
								<div class="form-group">


									<input class="form-control " type="text"
										placeholder="Edinburgh">

								</div>
							</div>
							<div class="modal-footer ">
								<button type="button" class="btn btn-warning btn-lg"
									style="width: 100%;">
									<span class="glyphicon glyphicon-ok-sign"></span> Update
								</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>



				<div class="modal fade" id="delete" tabindex="-1" role="dialog"
					aria-labelledby="edit" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
								<h4 class="modal-title custom_align" id="Heading">Delete
									this entry</h4>
							</div>
							<div class="modal-body">

								<div class="alert alert-danger">
									<span class="glyphicon glyphicon-warning-sign"></span> Are you
									sure you want to delete this Record?
								</div>

							</div>
							<div class="modal-footer ">
								<button type="button" class="btn btn-success">
									<span class="glyphicon glyphicon-ok-sign"></span> Yes
								</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">
									<span class="glyphicon glyphicon-remove"></span> No
								</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->


				</div>

			</div>


			<div>Footer</div>
</body>