<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
String courseId = request.getParameter("courseId");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning", "root", "root");
Statement st = con.createStatement();

int i = st.executeUpdate("delete from course where courseId='"+courseId+"'");

if (i > 0) {

	response.sendRedirect("successAdminDelete.jsp");

} else {
	response.sendRedirect("errorAdminDelete.jsp");
}
%>