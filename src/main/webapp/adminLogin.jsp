<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Admin Login</title>
<link rel="stylesheet" href="loginStyle.css">

</head>
<body>
	<div class="wrapper">
		<div class="title">Admin Login Form</div>
		<form action="adminBuilder.jsp" method="post">
			<div class="field">
				<input type="text" name="adminId" required> <label>Admin ID</label>
			</div>
			<div class="field">
				<input name="password" type="password" required> <label>Password</label>
			</div>

			<div class="field">
				<input type="submit" value="Login">
			</div>

			<div class="admin">
				<a href="index.jsp">Click here for User Login</a>
			</div>
		</form>
	</div>
</body>
</html>
