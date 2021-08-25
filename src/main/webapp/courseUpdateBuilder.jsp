<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
String courseId = request.getParameter("courseId");
String property = request.getParameter("property");
String propertyValue = request.getParameter("propertyValue");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning", "root", "root");
Statement st = con.createStatement();



int i = st.executeUpdate("update course set " + property + "='"+propertyValue+"' WHERE courseId='"+courseId+"'");

if (i > 0) {

	response.sendRedirect("successAdmin.jsp");

} else {
	response.sendRedirect("errorAdmin.jsp");
}
%>