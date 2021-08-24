<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Portal</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<nav> <input type="checkbox" id="check"> <label
		for="check" class="checkbtn"> <i class="fas fa-bars"></i>
	</label> <label class="logo">Admin Control Panel</label>
	<ul>
		<li><a class="active" href="adminLanding.jsp">Home</a></li>
		<li><a href="showAllUsers.jsp">User Details</a></li>
		<li><a href="checkFeedback.jsp">Check Feedback</a></li>
		<li><a href="showAllCoursesAdmin.jsp">View Courses</a></li>
		<li><a href="course.jsp">Add Course</a></li>
		<li><a href="courseUpdate.jsp">Update Course</a></li>
		<li><a href="courseDelete.jsp">Delete Course</a></li>
		<li><a href="index.jsp">Logout</a></li>
	</ul>
	</nav>
	<section> <img src="amdocs.jpg" width=100% height="640" /> </section>
</body>
</html>