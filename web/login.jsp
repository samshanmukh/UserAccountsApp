<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="./style/login.css">
        <title>Login Page</title>
    </head>
    <body>
        <div>
            <form action="login_back.jsp" method="post" name="myform">
            <div class="page">
                <div class="container">
                    <div class="left">
                        <div class="login">Login.</div>
                    </div>
                    <div class="right">
                        <div class="form"><br><br>
                            <input type="text" name="username" placeholder="Username" id="username" required><br><br>
                            <input type="password" name="password" placeholder="Password" id="password" required>
                            <select name="role">
                                <option value="none" selected="" disabled="">select your role</option>
                                <option value="user">User</option>
                                <option value="admin">Admin</option>
                                <option value="owner">Owner</option>
                            </select>
                            <input type="submit" name="submit" id="login" value="Login"><br>
                            <input type="button" onclick="window.location='register.jsp'" name="signup" id="signup" value="SignUp">
                            <!--<script type="text/javascript">alert("wrong username and password");</script>-->
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </body>
</html>