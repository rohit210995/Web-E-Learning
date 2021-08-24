<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	
	<head>
		<meta charset="utf-8">
		<title>Login Form</title>
		<link rel="stylesheet" href="loginStyle.css">
	
	</head>

	<body>
	
		<div class="wrapper">
		
			<div class="title">Login Form</div>
			
			<form action="loginBuilder.jsp" method="post">
			
				<div class="field">
					<input name="userId" type="text" required> <label>User ID</label>
				</div>
				
				<div class="field">
					<input name="password" type="password" required> <label>Password</label>
				</div>
				
				<div class="field">
					<input type="submit" value="Login">
				</div>
				
				<div class="signup-link">
					New Here? <a href="register.jsp">Register</a>
				</div>
				
				<div class="admin">
					<a href="adminLogin.jsp">Admin Login</a>
				</div>
			</form>
		</div>
	</body>
</html>