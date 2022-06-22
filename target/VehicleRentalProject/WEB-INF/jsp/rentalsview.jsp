<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking rental</title>
<style>
.container{
	background-color:	#F8F8F8;
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
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/home">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="addv">Add Vehicle</a>
  </li>

<div class="dropdown">
  <button class="btn btn-warning dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    ${name}
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="myrentals?name=${name}&vrn=${vrn}">My Bookings</a></li>
  </ul>
</div>
</ul> 

<div class="dec">
<h1>Vehicles</h1>
</div>
<div class="container">
		<div class="row row-cols-3">
			<c:forEach var="veh" items="${list}">
			<div class="col">
				<div class="card">
					<img src="<c:url value="${veh.img}"/>" width="355px;" height="200px;">
					<div class="card-body">
						<h5 class="card-title">${veh.vname}</h5>
						<p class="card-text">
							<b>Fuel</b> : ${veh.vfueltype} | 
							<b>Type</b>: ${veh.vtype} | <b>Cost/KM</b> : ${veh.vcpkm}
							</p>
							<div class="card-footer text-muted">						  
								<a href="vehicle?vrn=${veh.vrn}&name=${name}" class="btn btn-warning">Continue</a>
							</div>				
					</div>
				</div>
				
			</div>
			</c:forEach>
	</div>
				
</div>

</body>
</html>