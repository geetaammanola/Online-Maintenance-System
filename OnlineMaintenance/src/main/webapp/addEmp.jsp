<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
    href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>





<style>
.result-wrapper {
    background:#ccc;
    padding:30px;
}

</style>
</head>
<body>


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
    <li class="breadcrumb-item active" aria-current="page">Employee</li>
  </ol>
</nav>


<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item active" aria-current="page"><strong>Add New Employee</strong></li>
  </ol>
</nav>





<div class="container">
	<div class="row">
		<form method="get"  action='InsertionDemo' name="frmAddEmp">
			<div class="col-md-8">
			    <div class="row">
			    <div class="form-group col-md-6">
				    	<label for="exampleInputEmail">Employee id</label>
				    	<input type="text" class="form-control" id="exampleInputEmail" name="eid" placeholder=" Enter Employee id" 
				    	 value="<c:out value="${emp.eid}" />" >
				  	</div>	
			    
			    <div class="form-group col-md-6">
				    	<label for="exampleInputEmail">Employee Name</label>
				    	<input type="text" class="form-control" id="exampleInputEmail" name="name" placeholder=" Enter Employee Name" 
				    	 value="<c:out value="${emp.name}" />">
				  	</div>	
		  			<div class="form-group col-md-6">
		  				<label for="exampleInputUsername">E-mail</label>
				    	<input type="text" class="form-control" name="email"  placeholder=" Email Id" 
				    	 value="<c:out value="${emp.email}" />">
			  		</div>
			  		
			  		
			  			<div class="form-group col-md-6">
				    	<label for="telephone">Designation</label>
				    	<select class="form-control" name="designation"  value="<c:out value="${emp.designation}" />"> 
				    	    <option>Engineer</option>
				    	    <option>Accountant</option>
				    	    <option>Assistance</option>
				    	    <option>Worker</option>
				    	    <option>Manager</option>
				    	    <option>Receptionist</option>
				    	</select>
		  			</div>
		  			<!--  
		  			<div class="form-group col-md-6">
				    	<label for="telephone">Gender</label>
				    	<select class="form-control">
				    	    <option>--Select Gender--</option>
				    	    <option>Male</option>
				    	    <option>Female</option>
				    	</select>
		  			</div>
		  			
		  			
		  			<div class="form-group col-md-6">
				    	<label for="telephone">DOB</label>
				    	<input type="date" class="form-control" id="" placeholder=" Enter DOJ">
		  			</div>
		  			<div class="form-group col-md-6">
				    	<label for="telephone">DOJ</label>
				    	<input type="date" class="form-control" id="" placeholder=" Enter DOB">
		  			</div>-->
			  		
				  	
		  		</div>
	  		
	  			<div class="form-group">
			    	<label for="telephone"> Address</label>
			    	<textarea  class="form-control" id="description" name="address" placeholder="Address"  value="<c:out value="${emp.address}" />" ></textarea>
	  			</div>
	  			
	  			
	  			<div class="row">
		  			<div class="form-group col-md-6">
				    	<label for="telephone">Mobile Number</label>
				    	<input type="text" class="form-control" id="" name="mobileNo" placeholder=" Enter Telephone no."  value="<c:out value="${emp.mobileNo}" />">
		  			</div>
		  			<!--  
		  			<div class="form-group col-md-6">
				    	<label for="telephone">Mobile Number</label>
				    	<input type="text" class="form-control" id="" placeholder=" Enter Mobile no.">
		  			</div>
		  		-->
		  			
		  		
		  		</div>
	  			
	  			<div class="col-md-offset-3 col-md-9">
								<button id="btn-signup" type="submit" class="btn btn-primary" a href="UserController?action=insert" >
									<i class="icon-hand-right"></i> &nbsp Add Employee &nbsp
								</button>
							
							</div>
	  		</div>
	  	
		</form>
	</div>
</div>


</body>
</html>