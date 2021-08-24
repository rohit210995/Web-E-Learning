<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html lang="en" dir="ltr">

<head>
<meta charset="utf-8">
	<title>Feedback</title>
	<link rel="stylesheet" href="loginStyle.css">
</head>

<body>

	<div class="wrapper">
		<div class="title">Feedback Form</div>
		<form action="feedbackBuilder.jsp" method="post">
			
			<div class="field">
				<input type="text" name="userId" required> <label>User ID</label>
			</div>
			
			<div class="field">
				<input type="text" name="name" required> <label>Name</label>
			</div>

			<div class="field">
				<input type="text" name="email" required> <label>Email</label>
			</div>

			<div class="field">
				<input type="text" name="feedback" required> <label>Feedback</label>
			</div>

			<div class="field">
				<input type="submit" value="Submit">
			</div>

		</form>
	</div>
</body>
</html>