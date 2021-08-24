<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String userId = request.getParameter("userId");
	String name = request.getParameter("name");    
    String email = request.getParameter("email");
    String feedback = request.getParameter("feedback");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning",
            "root", "root");
    Statement st = con.createStatement();
    //out.print("dine");
    //ResultSet rs;
    int i = st.executeUpdate("insert into feedback(userId, userName, userEmail, feedback) values ('" + userId + "','" + name + "','"  + email + "','"+ feedback+"')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("successUser.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("errorUser.jsp");
    }
%>