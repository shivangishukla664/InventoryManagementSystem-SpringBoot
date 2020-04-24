<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Profile</title>

<script src="<c:url value="/resources/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script type="text/javascript" src="/resources/static/js/app.js"></script>

<link href="<c:url value="/resources/static/css/IndexCss.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
rel="stylesheet">
</head>
<body background="<c:url value="/resources/static/images/pic3.jpg"/>"/>

<div class="topnav">

  <a  href="showProfileForm">Profile</a>
  <a href="/view_customer_product">View Products Details</a>
  
  <a href="showInvoiceForm">Invoice Details</a>

  
     <div class="topnav-right">
    	 
          <a href="logout">Log Out</a>
           
     </div>
</div>


<div class="col-lg-3">
	
	</div>

<div class="container" >
		<div class=" col-lg-6" style="box-shadow: 0px 10px 15px black;margin-top: 80px;background-color: white;">
			<center><h1 style="font-family: Californian FB;">Customer Profile</h1>
			
		</center>
				
				
				<form:form id="productform" action="saveprofile" method="post" modelAttribute="customer">
					
						<!-- need to associate this data with customer id -->
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="cust_id"style="font-family: Californian FB;">Customer Id</label>
								<input type="text" name="cust_id" value="${customer.cust_id}" readonly="readonly"  Class="form-control" />
							</div>
						</div>

						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="name" style="font-family: Californian FB;">Name</label>
								<input type="text" name="name" value="${customer.name}" placeholder="Enter Your Name" Class="form-control" />
							</div>
						</div>
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="password" style="font-family: Californian FB;">Password</label>
								<input type="password" name="password" value="${customer.password}"  placeholder="Enter Your Password" Class="form-control" />
							</div>
						</div>

						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="email" style="font-family: Californian FB;">Email</label>
								<input type="text" name="email" value="${customer.email}" placeholder="Enter Your Email" Class="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="phone" style="font-family: Californian FB;">Phone</label>
								<input type="text" name="phone" value="${customer.phone}" placeholder="Enter Your Phone Number" Class="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							
							<div class="col-xs-12 col-lg-12">
							<label for="address" style="font-family: Californian FB;">Address</label>
								<input type="text" name="address" value="${customer.address}" placeholder="Enter Your Address" Class="form-control" />
							</div>
						</div>

						<div class="form-group"><br>
							<!-- Button -->
							<div class="col-xs-12 col-lg-12 ">
								<form:button Class="btn btn-success btn-block">Submit</form:button>
							</div><br><br>
						</div>

</form:form>
					
				
			<br>
		</div>
	</div>
	
	<div class="col-lg-3"></div>
</body>
</html>