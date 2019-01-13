
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Complain List</title>






<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>



<script type="text/javascript">
@import "//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css";
@import "http://fonts.googleapis.com/css?family=Roboto:400,500";


#sum_box h4 {
    text-align: left;
    margin-top: 0px;
    font-size: 30px;
    margin-bottom: 0px;
    padding-bottom: 0px;
}


#sum_box .db:hover {
    background: #40516f;
    color: #fff;
}




#sum_box .db:hover .icon {
    opacity: 1;
    color: #999999;
}

#sum_box .icon {
    color: #fff;
    font-size: 55px;
    margin-top: 7px;
    margin-bottom: 0px;
    float: right;
}


.panel.income.db.mbm{
        background-color: #5cb85c;
}

.panel.profit.db.mbm{
        background-color: #5bc0de;
}


.panel.task.db.mbm{
        background-color: #f0ad4e;
}


 

</script>

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
					<li class="breadcrumb-item active" aria-current="page">All
						Complain</li>
				</ol>
			</nav>


			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item active" aria-current="page"><strong>Active
							Complains</strong></li>
				</ol>
			</nav>



			<div id="sum_box" class="row mbl">
				<div class="col-sm-6 col-md-3">
					<div class="panel income db mbm">
						<div class="panel-body">
							<p class="icon">
							
							<i class="icon fa fa-users"></i>
								
							</p>
							<h4 class="value">
								<span>812</span><span>$</span>
							</h4>
							<p class="description">Saldo</p>

						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="panel profit db mbm">
						<div class="panel-body">
							<p class="icon">
							<i class="icon fa fa-users"></i>
							<i class="icon fa fa-user-check"></i>
								<i class="icon fa fa-shopping-cart"></i>
							</p>
							<h4 class="value">
								<span data-counter="" data-start="10" data-end="50"
									data-step="1" data-duration="0">189</span><span>$</span>
							</h4>
							<p class="description">Mensajes enviados</p>

						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-3">
					<div class="panel task db mbm">
						<div class="panel-body">
							<p class="icon">
								<i class="icon fa fa-signal"></i>
							</p>
							<h4 class="value">
								<span>155</span>
							</h4>
							<p class="description">Mensajes recibidos</p>

						</div>
					</div>
				</div>

			</div>
			</body>
			</html>