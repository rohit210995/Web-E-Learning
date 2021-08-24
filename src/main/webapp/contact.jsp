<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Contact Form</title>
<link rel="stylesheet" href="loginStyle.css">

</head>
<body>
	<div class="wrapper">
		<div class="title">Contact Form</div>
		<form action="contactBuilder.jsp" method="post">

			<div class="field">
				<input type="text" name="userId" required> <label>User
					ID</label>
			</div>

			<div class="field">
				<input type="text" name="name" required> <label>User
					Name</label>
			</div>

			<div class="field">
				<input type="text" name="email" required> <label>Email
					ID</label>
			</div>

			<div class="field">
				<input type="text" name="phone" required> <label>Phone
					No</label>
			</div>

			<div class="field">
				<input type="text" name="address" required> <label>Address</label>
			</div>

			<div class="field">
				<input type="submit" value="Submit">
			</div>

		</form>
	</div>
</body>
</html>

