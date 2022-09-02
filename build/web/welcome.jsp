<%-- 
    Document   : register
    Created on : Mar 21, 2022, 2:15:09 PM
    Author     : erencan
--%>
<%@page import="uts.isd.model.dao.DBConnector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<head> Welcome Page
  <link href="styles.css" rel="stylesheet" type="text/css">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
  <tr>
    <td><% String name = request.getParameter("name"); %> <a>Welcome <% out.println(name); %> You have successfully logged in. </a>
    </td>
  </tr>
  <H1>Session Details </H1><%
            //Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/iotdb;create=true");
            DBConnector db = new DBConnector();
            Connection con = db.openConnection();
           Statement statement = con.createStatement() ;
          ResultSet resultset = statement.executeQuery("SELECT * FROM Register ORDER BY id desc Fetch FIRST 1 rows only") ;
       %> <TABLE BORDER="1">
    <TR>
      <TH>ID</TH>
      <TH>email</TH>
      <TH>Name</TH>
      <TH>Password</TH>
      <TH>Phone</TH>
      <TH>Gender</TH>
      <TH>Favcol</TH>
      <TH>TOS</TH>
    </TR><% while(resultset.next()){ %> <TR>
      <TD><%= resultset.getString(1) %> </td>
      <TD><%= resultset.getString(2) %> </TD>
      <TD><%= resultset.getString(3) %> </TD>
      <TD><%= resultset.getString(4) %> </TD>
      <TD><%= resultset.getString(5) %> </TD>
      <TD><%= resultset.getString(6) %> </TD>
      <TD><%= resultset.getString(7) %> </TD>
      <TD><%= resultset.getString(8) %> </TD>
      <td>
        <a href=DeleteServlet?id=<%=resultset.getString(1) %>> Delete </a>
      </td>
    </TR><% } %>
  </TABLE>
  <tr></tr>
  <tr>
    <td></td>
    <td></td>
    <td>
      <a href="index.jsp">
        <b>Logout</b>
      </a>
      <a href="update.jsp">
        <b>Update</b>
      </a>
  </tr>
</body>