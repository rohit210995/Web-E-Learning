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
		<form action="courseUpdateBuilder.jsp" method="post">

			<div class="field">
				<input type="text" name="courseId" required> <label>Course
					ID</label>
			</div>

				<br/>Select Property to Alter:<br/> 
				<input type="radio" name=property value="courseName" />Course Name<br/> 
				<input type="radio" name=property value="courseDesc" />Course Description<br/> 
				<input type="radio" name=property value="courseResource" />Course Resource<br/> 
				<input type="radio" name=property value="courseFee" />Course Fees<br/> 
			

			<div class="field">
				<input type="text" name="propertyValue" required> <label>Enter the New Value</label>
			</div>

			<div class="field">
				<input type="submit" value="Submit">
			</div>

		</form>
	</div>
</body>
</html>



