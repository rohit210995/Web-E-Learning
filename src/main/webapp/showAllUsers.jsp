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
	<h1>Users Detail</h1>
	<table border="1">
		<tr>

			<td>User ID</td>
			<td>User Name</td>
			<td>User Email</td>
			<td>User Phone</td>
			<td>User Address</td>


		</tr>
		<%
		try {
			connection = DriverManager.getConnection(connectionUrl + database, userid, password);
			statement = connection.createStatement();
			String sql = "select * from contact";
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
		%>
		<tr>

			<td><%=resultSet.getString("userId")%></td>
			<td><%=resultSet.getString("userName")%></td>
			<td><%=resultSet.getString("userEmail")%></td>
			<td><%=resultSet.getString("userPhone")%></td>
			<td><%=resultSet.getString("userAddress")%></td>

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