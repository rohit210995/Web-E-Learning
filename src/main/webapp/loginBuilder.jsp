<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning", "root", "root");
response.setContentType("text/html");
PrintWriter output = response.getWriter();
Statement st = con.createStatement();
String userId = request.getParameter("userId");
String password = request.getParameter("password");
ResultSet rs = st.executeQuery("select * from user1 where userId='" + userId + "' and userPassword='" + password + "'");

if (rs.next()) {

	System.out.println("success");

	response.sendRedirect("userLanding.jsp");

} else {
	output.println("Invalid User Password Try Again");
	System.out.println("Failed");
	response.sendRedirect("loginFailure.jsp");
}
%>