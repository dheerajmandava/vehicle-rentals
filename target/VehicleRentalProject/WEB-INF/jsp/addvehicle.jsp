	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Vehicle</title>
</head>
<body>
<center><h1>Add Vehicle</h1></center>
	<form:form id="regForm" modelAttribute="vehicle" action="addVehicle" method="post">

		<table align="center">
			<tr>
				<td><form:label path="vname">Vehicle Name</form:label></td>
				<td><form:input path="vname" name="vname" id="vname" /></td>
			</tr>
			<tr>
				<td><form:label path="vrn">Registration Number</form:label></td>
				<td><form:input path="vrn" name="vrn" id="vrn" /></td>
			</tr>
			<tr>
				<td><form:label path="vcpkm">Cost per KM</form:label></td>
				<td><form:input path="vcpkm" name="vcpkm" id="vcpkm" /></td>
			</tr>
			<tr>
				<td><form:label path="vprice">Price</form:label></td>
				<td><form:input path="vprice" name="vprice" id="vprice" /></td>
			</tr>
			<tr>
				<td><form:label path="vfueltype">Fuel Type</form:label></td>
				<td><form:input path="vfueltype" name="vfueltype" id="vfueltype" /></td>
			</tr>
			<tr>
				<td><form:label path="vmileage">Mileage</form:label></td>
				<td><form:input path="vmileage" name="vmileage" id="vmileage" /></td>
			</tr>
				<tr>
				<td><form:label path="vtype">Type</form:label></td>
				<td><form:input path="vtype" name="vtype" id="vtype" /></td>
			</tr>
			<tr>
				<td><form:label path="img">Image</form:label></td>
				<td><form:input path="img" name="img" id="img" value="/resources/image/" /></td>
			</tr>
			<tr>
				<td></td>
				<td><form:button id="addvehicle" name="addvehicle">Add Vehicle</form:button></td>
			</tr>
			<tr></tr>
			<tr>
				<td></td>
				<td><a href="home">Home</a></td>
			</tr>
		</table>
	</form:form>

</body>
</html>