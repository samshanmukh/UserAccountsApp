<%-- 
    Document   : login_back
    Created on : 2 Sep, 2018, 5:16:56 PM
    Author     : sam
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
<%
    String name = request.getParameter("username");
    String pass = request.getParameter("password");
    String URL = "jdbc:mysql://localhost:3306/user_account";
    Connection conn = null;
    Statement stm = null;
    ResultSet rs = null;
%>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(URL,"root","root");
        stm = conn.createStatement();
        rs = stm.executeQuery("select * from users where name='"+name+"' and pass='"+pass+"'");
        
        if(name.equals("sam") && pass.equals("admin")) {
            response.sendRedirect("owner.jsp");
        } else if(rs.next()) {
            response.sendRedirect("home.jsp");
        } else {
            response.sendRedirect("login.jsp");
            System.out.println("ERROR");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<!--<p>login back-end page</p>-->
    </body>
</html>