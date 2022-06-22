<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>My Rentals</title>
</head>
<body>
<center><h1>Rentals</h1></center>
<div class="container">
<table class="table">
  <thead>
    <tr>
      <th scope="col">Vehicle Name</th>
      <th scope="col">Renter Name</th>
      <th scope="col">Registd. No</th>
      <th scope="col">Cost per KM</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="veh" items="${list}">
    <tr>
      <td>${veh.vname}</td>
      <td>${name}</td>
      <td>${veh.vrn}</td>
      <td>${veh.vcpkm}</td>
      <td><a href="#">Pay</a></td>  
    </tr>
 	</c:forEach>
  </tbody>
</table>
</div>
</body>
</html>