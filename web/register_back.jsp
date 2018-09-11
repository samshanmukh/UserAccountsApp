<%-- 
    Document   : register_back
    Created on : 3 Sep, 2018, 9:20:04 AM
    Author     : sam
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignUp Page</title>
    </head>
    <body>
<%
    
   String name = request.getParameter("username");
   String pass = request.getParameter("password");
   
   String fname = request.getParameter("firstname");
   String lname = request.getParameter("lastname");
   String email = request.getParameter("email");
   String phone = request.getParameter("phone");
   String gender = request.getParameter("gender");
   String domain = request.getParameter("domain");
   String role = request.getParameter("role");
   
   String URL = "jdbc:mysql://localhost:3306/user_account";
   Connection conn = null;
   PreparedStatement psmt = null;
%>
<%
   Class.forName("com.mysql.jdbc.Driver").newInstance();
   int updateQuery = 0;
   if(name != null && pass != null){
       if(name != "" && pass != "") {
           try {
               conn = DriverManager.getConnection(URL, "root", "root");
               psmt = conn.prepareStatement("INSERT INTO users(Name,Pass,Fname,Lname,Email,Phone,Gender,Domain, Role) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
               psmt.setString(1, name);
               psmt.setString(2, pass);
               psmt.setString(3, fname);
               psmt.setString(4, lname);
               psmt.setString(5, email);
               psmt.setString(6, phone);
               psmt.setString(7, gender);
               psmt.setString(8, domain);
               psmt.setString(9, role);
               updateQuery = psmt.executeUpdate();
               if (updateQuery != 0) { 
                   response.sendRedirect("login.jsp");
%>
<script type="text/javascript">
    alert('User Added');
</script>

<% }
} catch (Exception ex) {
    ex.printStackTrace();
}
}
}
%>
    </body>
</html>
