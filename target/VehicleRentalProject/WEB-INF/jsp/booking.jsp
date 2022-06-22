<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Booking</title>
<style>
h1{
	font-family:Times New Roman;
}
input{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid black; 
  border-radius: 4px;
  box-sizing: border-box;
  background-color:white; 	 
}
label{
	font-family: 'Roboto', sans-serif;
}
.con {
	 width:350px;
	 margin:50px 500px;
	 padding:0px 200px 0px 0px;
}	
.con-m {
	margin:0px -70px; 
	padding:0px 100px;
}	
</style>
</head>
<body>

<ul class="nav nav-dark bg-dark justify-content-end">

<div class="dropdown">
  <button class="btn btn-warning dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    ${name}
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="myrentals?name=${name}&vrn=${vrn}">My Bookings</a></li>
  </ul>
</div>
</ul> 

	<form:form id="bookForm" modelAttribute="book" action="bookingVehicle?name=${name}&vrn=${vrn}" method="post"> 
	<div class="con">
	<div class="con-m">
	<center><h1>Booking</h1></center>
		<table align="center">
			<tr>
				<td><form:label path="startDate">Start Date</form:label></td>
				<td><form:input path="startDate" type="datetime-local" name="startDate" id="startDate" /></td>
			</tr>
			<tr>
				<td><form:label path="endDate">End Date</form:label></td>
				<td><form:input path="endDate" type="datetime-local" name="endDate" id="endDate" /></td>
			</tr>
		
			<tr>
				<td><form:label path="pickupLocation">Pickup</form:label></td>				
				<td><form:input path="pickupLocation" name="pickupLocation" id="pickupLocation" /></td>		
			</tr>
			<tr>
				<td><form:label path="aadharno">Aadhar Number</form:label></td>
				<td><form:input path="aadharno" name="aadharno" id="aadharno" /></td>
			</tr>
			<tr>
				<td><form:label path="address">Address</form:label></td>
				<td><form:input path="address" name="address" id="address" /></td>
			</tr>
			<tr>
				<td></td>
				<td><form:button id="register" name="register"><a href="myrentals?name=${name}&vrn=${vrn}">Rent</a></form:button></td>
			</tr>
			
		</table>
		</div>
		</div>
	</form:form>
</body>
</html>