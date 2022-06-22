<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
body{
	background-image: url("<c:url value="/resources/image/home1.jpg"/>");
	background-size:1370px 800px;
	background-repeat:no-repeat;
}

ul li a{
	color: white;
}

h1{
color: black;
}

.side{
	padding:0px 0px 5px 0px;
}

</style>
</head>
<body>

<ul class="nav nav-light bg-light justify-content-center"> 
 <li class="nav-item">
    <h1> Welcome ${vname} </h1>
  </li>
  </ul>
<ul class="nav justify-content-center"> 
  <li class="nav-item">
    <a class="nav-link" href="login">Login</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="register">Register</a>
  </li>
</ul>

<div class="side">
		<a class="btn btn-light" data-bs-toggle="offcanvas"
			href="#offcanvasExample" role="button"
			aria-controls="offcanvasExample">About Us</a> 
		<div class="offcanvas offcanvas-start" tabindex="-1"
			id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
			<div class="offcanvas-header">
				<h5 class="offcanvas-title" id="offcanvasExampleLabel">About</h5>
				<button type="button" class="btn-close text-reset"
					data-bs-dismiss="offcanvas" aria-label="Close"></button>
			</div>
			<div class="offcanvas-body">
				<div>Vehicle Rentals is a website service for every transport needs.</div>
			</div>
		</div>
		
</div>

<div class="side">
		<a class="btn btn-light" data-bs-toggle="offcanvas"
			href="#offcanvasExample1" role="button"
			aria-controls="offcanvasExample">Support</a>
		<div class="offcanvas offcanvas-start" tabindex="-1"
			id="offcanvasExample1" aria-labelledby="offcanvasExampleLabel"> 
			<div class="offcanvas-header">
				<h5 class="offcanvas-title" id="offcanvasExampleLabel1">Support</h5>
				<button type="button" class="btn-close text-reset"
					data-bs-dismiss="offcanvas" aria-label="Close"></button>
			</div>
			<div class="offcanvas-body">
				<div>...</div>
			</div>
		</div>
</div>
	
</body>
</html>