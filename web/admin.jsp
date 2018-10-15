<%-- 
    Document   : owner
    Created on : 6 Sep, 2018, 2:47:00 PM
    Author     : sam
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./style/admin.css" >
        <title>Owner Page</title>
    </head>
    <body>
        <div class="container">
        <table border="1">
            <caption>Users Information</caption>
        <%
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
                rs = stm.executeQuery("select * from users");
        %>

        <tr>
        <th>name</th>
        <!--<th>pass</th>-->
        <th>fname</th>
        <th>lname</th>
        <th>gender</th>
        <th>domain</th>
        </tr>
        
        <% 
            while(rs.next()) {
                
        %>
        <tr>
        <td> <%=rs.getString(1) %> </td>
        <td> <%=rs.getString(3) %> </td>
        <td> <%=rs.getString(4) %> </td>
        <td> <%=rs.getString(5) %> </td>
        <td> <%=rs.getString(6) %> </td>
        </tr>
        <%
            } conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        </table>
        </div>
    </body>
</html>
