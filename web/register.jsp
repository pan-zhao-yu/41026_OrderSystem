<%-- 
    Document   : register
    Created on : Mar 14, 2022, 12:43:09 PM
    Author     : darry
--%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head> 
    Register Form
    <link href="styles.css" rel="stylesheet" type="text/css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  </head>
  
  <body>
    <form action="register"  method="post">
      <label for="email">Email:</label>
      <br>
      <input type="text" id="email" name="email" value="">
      <br>
      <label for="name">Full Name:</label>
      <br>
      <input type="text" id="name" name="name" value="">
      <br>
      <label for="password">Password:</label>
      <br>
      <input type="password" id="input" name="password" value="">
      <br>
      <br>
      <label for="phone">Phone:</label>
      <br>
      <input type="text" id="phone" name="phone" value="">
      <br>
      <br>
      <label for="gender">Gender</label>
      <select name="gender">
        <option value="none" selected>None</option>
        <option value="male">Male</option>
        <option value="female">Female</option>
        <option value="other">Other</option>
      </select>
      <br>
      <br>
      <label for="favcol">Favorite Color:</label>
      <br>
      <input type="text" id="favcol" name="favcol" value="">
      <br>
      <label for="tos">Agree to TOS:</label>
      <br>
      <input type="text" id="tos" name="tos" value="">
      <br>
      <br>
      <input type="submit" value="register">
    </form>
  </body>
</html>