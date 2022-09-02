<%-- 
    Document   : register
    Created on : Mar 21, 2022, 2:15:09 PM
    Author     : erencan
--%><%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    Index Page
    <link href="styles.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
    <form action="/action_page.php">
      <label>Home</label>
      <a href="login.jsp">Login</a> | 
      <a href="register.jsp">Register</a> | 
      <a class="button" href="main.jsp">Shipment</a> |
      <a class="button" href="adminLogin.jsp">System Admin</a>
      
      <jsp:include page="/Shipment_ConnServlet" flush="true" /> <%--
        above code makes shipment servlet start working. don't remove.
      --%>
    </form>
  </body>
</html>