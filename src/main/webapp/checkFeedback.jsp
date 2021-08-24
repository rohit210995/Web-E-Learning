<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

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

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FeedBack</title>
</head>
<body>
	<h1>User Feedbacks</h1>
	<table border="1">
		<tr>

			<td>User Name</td>
			<td>User Email</td>
			<td>User Feedback</td>


		</tr>
		<%
		try {
			connection = DriverManager.getConnection(connectionUrl + database, userid, password);
			statement = connection.createStatement();
			String sql = "select * from feedback";
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
		%>
		<tr>
		
			<!-- <td><%=resultSet.getString("userId")%></td> -->
			<td><%=resultSet.getString("userName")%></td>
			<td><%=resultSet.getString("userEmail")%></td>
			<td><%=resultSet.getString("feedback")%></td>

		</tr>
		<%
		}
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
	</table>
	<br/>
	<h1><a href="adminLanding.jsp">Click Here to go Back</a></h1>
</body>
</html>