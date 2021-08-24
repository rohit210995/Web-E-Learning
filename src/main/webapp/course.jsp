<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Course Form</title>
<link rel="stylesheet" href="loginStyle.css">

</head>
<body>
	<div class="wrapper">
		<div class="title">Course Form</div>
		<form action="courseBuilder.jsp" method="post">
		
			<div class="field">
				<input type="text" name="courseId" required> <label>Course ID</label>
			</div>
			
			<div class="field">
				<input type="text" name="courseName" required> <label>Course Name</label>
			</div>

			<div class="field">
				<input type="text" name="courseDesc" required> <label>Description</label>
			</div>

			<div class="field">
				<input type="text" name="courseResource" required> <label>Resources</label>
			</div>
			
			<div class="field">
				<input type="text" name="courseFee" required> <label>Course Fees</label>
			</div>
			
			<div class="field">
				<input type="submit" value="Submit">
			</div>

		</form>
	</div>
</body>
</html>



