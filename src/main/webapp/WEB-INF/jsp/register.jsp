<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style>
h1 {
	font-family: Times New Roman;
}

input {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid black;
	border-radius: 4px;
	box-sizing: border-box;
	background-color: white;
}

label {
	font-family: 'Roboto', sans-serif;
}

.con {
	width: 350px;
	margin: 50px 500px;
	padding: 0px 200px 0px 0px;
}

.con-m {
	margin: 0px -70px;
	padding: 0px 100px;
}
</style>
</head>
<body>

	<form:form id="regForm" modelAttribute="user" action="registerProcess"
		method="post">
		<div class="con">
			<div class="con-m">
				<center>
					<h1>Register</h1>
				</center>
				<table align="center">
					<tr>
						<td><form:label path="name">Username</form:label></td>
						<td><form:input path="name" name="name" id="name" /></td>
					</tr>
					<tr>
						<td><form:label path="email">Email</form:label></td>
						<td><form:input path="email" name="email" id="email" /></td>
					</tr>
					<tr>
						<td><form:label path="password">Password</form:label></td>
						<td><form:password path="password" name="password"
								id="password" /></td>
					</tr>
					
					<td>
					Role: <select name="roles">
						<option value="">Select...</option>
						<option value="customer">customer</option>
					</select></td>
				
					<tr>
						<td></td>
						<td><form:button id="register" name="register">Register</form:button></td>
					</tr>
					<tr></tr>
				</table>
			</div>
		</div>
	</form:form>
</body>
</html>