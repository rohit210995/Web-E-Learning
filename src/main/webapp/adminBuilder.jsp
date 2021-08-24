<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.*" %>

<%
	
		
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/elearning", "root", "root");
	 response.setContentType("text/html");
     PrintWriter output = response.getWriter();
	Statement st = con.createStatement();
            String adminId=request.getParameter("adminId");
            String password=request.getParameter("password");
           ResultSet rs = st.executeQuery("select * from admin1 where adminId='"+adminId+"' and adminPassword='"+password+"'");
                                    
             if(rs.next())
             {
            	
                 System.out.println("success");
                 
                 response.sendRedirect("adminLanding.jsp");  
                 
             }
             else
             {
            	 output.println("Invalid User Password");
                 System.out.println("fail");
                 response.sendRedirect("loginFailure.jsp");
             }
              


%>