<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
String courseId = request.getParameter("courseId");
String courseName = request.getParameter("courseName");
String courseDesc = request.getParameter("courseDesc");
String courseResource = request.getParameter("courseResource");
String courseFee = request.getParameter("courseFee");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning", "root", "root");
Statement st = con.createStatement();
//out.print("dine");
//ResultSet rs;
int i = st.executeUpdate("insert into course(courseId, courseName, courseDesc, courseResource, courseFee) values ('"
		+ courseId + "','" + courseName + "','" + courseDesc + "','" + courseResource + "','" + courseFee + "')");
if (i > 0) {
	//session.setAttribute("userid", user);
	response.sendRedirect("successAdmin.jsp");
	// out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
} else {
	response.sendRedirect("errorAdmin.jsp");
}
%>