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
    String role = request.getParameter("role");
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
        
        boolean admin = role.equals("admin");
        boolean owner = role.equals("owner");
        boolean user = role.equals("user");
        
        if(name.equals("sam") && pass.equals("admin") && admin) {
            response.sendRedirect("admin.jsp");
        } else if(rs.next() && user) {
            response.sendRedirect("home.jsp");
        } else if(rs.next() && owner) {
            response.sendRedirect("owner.jsp");
        } else {
            System.out.println("Wrong username or password!");
            response.sendRedirect("login.jsp");
        } conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<!--<p>login back-end page</p>-->
    </body>
</html>