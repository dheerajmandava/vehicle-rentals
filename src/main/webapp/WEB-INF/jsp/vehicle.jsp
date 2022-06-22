<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Recursive:wght@800&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Details</title>
<style>
.container{
	width:50%;
	margin: 50px 320px;
}

h1 {
	font-family: 'Recursive', sans-serif;
}
p {
text-align:left;
}
.card-body{
padding:10px 10px;
margin:0px 200px; 
}
.dec {
	margin:0px 600px; 
}

.card-footer {
	margin:20px 100px;
}

ul li a {
	color:white;
}

.card {
	height:400px;
	box-shadow:10px 10px 20px grey;
}

.card-body {
	background-color:#f0f0f5;
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
    <li><a class="dropdown-item" href="#">My Bookings</a></li>
  </ul>
</div>
</ul> 



<div class="container">
	<div class="card text-center">
		<div class="card-header">
			<h1>Vehicle Details</h1>
		</div>
		<c:forEach var="veh" items="${list}">
		<div class="card-body">
			<p><b>Name</b>: <i>${veh.vname}</i></p>
			<p><b>Registration Number</b>: <i>${veh.vrn}</i></p>
			<p><b>Cost Per Km</b>: <i>${veh.vcpkm}</i></p>
			<p><b>Price</b>: <i>${veh.vprice}/-</i></p>
			<p><b>Fuel Type</b>: <i>${veh.vfueltype}</i></p>
			<p><b>Mileage</b>: <i>${veh.vmileage}</i></p>
			<p><b>Type</b>: <i>${veh.vtype}</i></p> 
		</div>				
			 <a href="bookVehicle?vrn=${veh.vrn}&name=${name}" class="btn btn-success">Continue to Book </a>
		</c:forEach>  
		</div>
</div>
</body>
</html>