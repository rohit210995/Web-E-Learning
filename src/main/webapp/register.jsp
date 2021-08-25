<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
<meta charset="utf-8">
<title>Registration Form</title>
<link rel="stylesheet" href="loginStyle.css">

</head>

<body>
	<div class="wrapper">
		<div class="title">User Registration Form</div>
		<form action="registerBuilder.jsp" method="post">
			
			<div class="field">
				<input name="userId" type="text" required> <label>User ID</label>
			</div>
			
			<div class="field">
				<input name="password" type="password" required> <label>Password</label>
			</div>
			
			<div class="field">
				<input name="name" type="text" required> <label>Name</label>
			</div>
			
			<div class="field">
				<input type="submit" value="Register">
			</div>

		</form>
	</div>
</body>
</html>