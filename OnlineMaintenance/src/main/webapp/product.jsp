<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<div class="container">
	<div class="row">

		<!-- SIDEBAR DISPLAY -->
		<div class="col-md-3">

			<%@include file="./sidebar.jsp"%>
		</div>

<br><br><br>







		<!-- ACTUAL PRODUCT  -->
		<div class="col-md-9">
		



<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="#">DashBoard</a></li>
    <li class="breadcrumb-item active" aria-current="page">Product List</li>
  </ol>
</nav>


<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item active" aria-current="page"><strong>Product Details</strong></li>
  </ol>
</nav>



<div class="container">
    <div class="row col-md-8  custyle">
    <table class="table table-striped custab">
    <thead>
    <a href="#" class="btn btn-primary btn-xs pull-right"><b>+</b> Add new categories</a>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Parent ID</th>
            <th class="text-center">Action</th>
        </tr>
    </thead>
            <tr>
                <td>1</td>
                <td>News</td>
                <td>News Cate</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>
            </tr>
            <tr>
                <td>2</td>
                <td>Products</td>
                <td>Main Products</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>
            </tr>
            <tr>
                <td>3</td>
                <td>Blogs</td>
                <td>Parent Blogs</td>
                <td class="text-center"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>
            </tr>
    </table>
    </div>
</div>
		

			<!-- Breadcrum Component  -->
			<div class="row">

				<div class="col-lg-12">
					<ol class="braedcrum">

						<li><a href="#">product </a></li>
						<li class="active">Product</li>
					</ol>
				</div>
			</div>
		</div>
	</div>