<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
	String userId = request.getParameter("userId");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning", "root", "root");
	Statement st = con.createStatement();

	int i = st.executeUpdate("insert into contact(userId, userName, userEmail, userPhone, userAddress) values ('" + userId
			+ "','" + name + "','" + email + "','" + phone + "','" + address + "')");
	if (i > 0) {
	
		response.sendRedirect("successUser.jsp");
	
	} else {
		response.sendRedirect("errorUser.jsp");
	}
%>