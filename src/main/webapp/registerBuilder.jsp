<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%

	String userId = request.getParameter("userId");
	String name = request.getParameter("name");    
    String pwd = request.getParameter("password");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning", "root", "root");
    Statement st = con.createStatement();

    int i = st.executeUpdate("insert into user1(userId, userPassword, userName) values ('" + userId + "','"  + pwd + "','" + name +"')");
    if (i > 0) {
        
        response.sendRedirect("registerSuccess.jsp");

    } else {
        response.sendRedirect("registerFailure.jsp");
    }
%>