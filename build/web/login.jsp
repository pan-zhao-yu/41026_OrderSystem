<%-- 
    Document   : login
    Created on : Mar 21, 2022, 2:15:09 PM
    Author     : erencan
--%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head> 
    Login 
    <link href="styles.css" rel="stylesheet" type="text/css">
  </head>
  <body>
    <form action="login" method="post">
      <label for="email">Email:</label>
      <br>
      <input type="text" id="email" name="email" value="">
      <br>
      <label for="password">Password:</label>
      <br>
      <input type="password" id="input" name="password" value="">
      <br>
      <br>
      <input type="submit" value="Submit">
    </form>
  </body>
</html>
