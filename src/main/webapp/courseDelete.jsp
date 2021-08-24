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
		<div class="title">Course Deletion Form</div>
		<form action="courseDeleteBuilder.jsp" method="post">

			<div class="field">
				<input type="text" name="courseId" required> <label>Course
					ID</label>
			</div>

			<div class="field">
				<input type="submit" value="Delete">
			</div>

		</form>
	</div>
</body>
</html>



