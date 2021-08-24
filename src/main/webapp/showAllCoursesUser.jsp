<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "elearning";
String userid = "root";
String password = "root";
try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<h1>List of All the Courses</h1>
	<table border="1">
		<tr>
			
			<td>Course ID</td>
			<td>Course Name</td>
			<td>Course Description</td>
			<td>Course Resource</td>
			<td>Course Fees(INR)</td>


		</tr>
		<%
		try {
			connection = DriverManager.getConnection(connectionUrl + database, userid, password);
			statement = connection.createStatement();
			String sql = "select * from course";
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
		%>
		<tr>

			<td><%=resultSet.getString("courseId")%></td>
			<td><%=resultSet.getString("courseName")%></td>
			<td><%=resultSet.getString("courseDesc")%></td>
			<td><%=resultSet.getString("courseResource")%></td>
			<td><%=resultSet.getString("courseFee")%></td>

		</tr>
		<%
		}
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
	</table>
	<br />
	<h1><a href="userLanding.jsp">Click Here to go Back</a></h1>
</body>
</html>