<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="./style/register.css">
  <title>Sign Up</title>
</head>
    <body>
        <form action="register_back.jsp" method="post" name="registerform">
            <div class="page">
                <div class="container">
                    <div class="left">
                        <div class="signup">SignUp.</div>
                    </div>
                    <div class="right">
                        <div class="form">
                            <input type="text" name="firstname" id="firstname" placeholder="first name" required>
                            <input type="text" name="lastname" id="lastname" placeholder="last name" required>
                            <input type="email" name="email" id="email" placeholder="email" required>
                            <input type="phone" name="phone" id="phone" placeholder="phone" required>
                            <input type="text" name="username" id="username" placeholder="username" required>
                            <input type="password" name="password" id="password" placeholder="password" required>
                            <label class="gender">Male<input type="radio" checked="checked" value="Male" name="gender"><span class="checkmark"></span></label>
                            <label class="gender"> Female<input type="radio" checked="checked" value="Female" name="gender"><span class="checkmark"></span></label>
                            <select name="domain">
                                <option value="none" selected="" disabled="">Select Domain</option>
                                <option value="CSE">Computer Science Engineering</option>
                                <option value="IT">Information Technology Engineering</option>
                                <option value="MECH">Mechanical Engineering</option>
                                <option value="EEE">Electrical Engineering</option>
                            </select>
                            <select name="role">
                                <option value="none" selected="" disabled="">Select Role</option>
                                <option value="admin">Admin</option>
                                <option value="owner">Owner</option>
                                <option value="user">User</option>
                            </select>                            
                            <input type="submit" name="submit" value="Submit" id="submit">
                            <input type="button" onclick="window.location='login.jsp'" name="login" value="Login" id="login">
                            <input type="reset" name="reset" value="Reset" id="reset">
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body> 
</html>