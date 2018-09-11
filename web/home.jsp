<%-- 
    Document   : home
    Created on : 2 Sep, 2018, 5:20:36 PM
    Author     : sam
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./style/home.css">
        <title>Home Page</title>
    </head>
    <body>
        <table border="1">
        <h1>Hello World!</h1>
        <%
            String name = request.getParameter("username");
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
                rs = stm.executeQuery("select * from users where name='"+name+"'");
        %>
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>First name</th>
                <th>Last name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Gender</th>
                <th>Domain</th>
                <th>Role</th>
            </tr>
        <%
            while(rs.next()) {
        %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
                <td><%=rs.getString(9)%></td>
            </tr>
        <%
            }conn.close();
            } catch(Exception e) {
                e.printStackTrace();
            }
        %>
        </table>
    </body>
</html>
