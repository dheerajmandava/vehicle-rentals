<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
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
label {
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
<div class="con">
	<div class="con-m">
<center><h1>Login</h1></center>
	<form:form id="loginForm" modelAttribute="login" action="loginProcess" method="post">
		<table align="center">
			<tr>
				<td><form:label path="name">Username: </form:label></td>
				<td><form:input path="name" name="name" id="name" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Password:</form:label></td>
				<td><form:password path="password" name="password" id="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td align="left"><form:button id="login" name="login">Login</form:button></td>
			</tr>
			<tr></tr>
			<tr>
				<td></td>
				<td>Not Registered?<a href="register">register</a></td>
			</tr>
		</table>
	</form:form>
	<table align="center">
		<tr>
			<td style="font-style: italic; color: red;">${message}</td>
		</tr>
	</table>
	</div>
</div>
</body>
</html>