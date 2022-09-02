<%-- 
    Document   : home
    Created on : Apr 1, 2022, 1:12:16 PM
    Author     : darry
--%>

<%@page import="uts.isd.model.dao.DBConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="styles.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
       	<tr><td>
	<% String email = request.getParameter("email"); %>
<a>Welcome   <% out.println(email); %> You have successfully logged in.</a></td></tr>
         <H1>Logs </H1><%
           // Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/iotdb;create=true");
           DBConnector db = new DBConnector();
           Connection con = db.openConnection();
           Statement statement = con.createStatement() ;
          ResultSet resultset = statement.executeQuery("SELECT * FROM AccessLogs ORDER BY LogID ASC") ;
       %> <TABLE BORDER="1">
    <TR>
      <TH>ID</TH>
      <TH>Email</TH>
      <TH>Password</TH>
      <TH>Login Date</TH>
      <TH>Logout Date</TH>
    </TR><% while(resultset.next()){ %> <TR>
      <TD><%= resultset.getString(1) %> </td>
      <TD><%= resultset.getString(2) %> </TD>
      <TD><%= resultset.getString(3) %> </TD>
      <TD><%= resultset.getString(4) %> </TD>
      <TD><%= resultset.getString(5) %> </TD>
    </TR><% } %>
    
  </TABLE>
      <form action="logout" method="post">
          <br>
          <input type="logout" value="Logout">
          <br>
          <br>
      <a href="viewDeviceCatalogue.jsp"> View Device Catalogue </a>
      <br>
      <br>
      <a href="purchaseindex.jsp"> Purchase Management Menu </a>
      <br>
      <br>
      <a class="button" href="main.jsp"> Shipment </a>
      <br>
      <br>
      
      <jsp:include page="/Shipment_ConnServlet" flush="true" /> <%--
        above code makes shipment servlet start working. don't remove.
      --%>
    </body>
</html>
