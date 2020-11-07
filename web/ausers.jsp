<%-- 
    Document   : sas.jsp
    Created on : Jun 18, 2019, 10:00:58 PM
    Author     : ADMIN
--%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="stylew.css" rel="stylesheet" />
        <title>JSP Page</title>
    </head>
    <body>
     <div class="header">
        <h1 align= "center" >HELLO BOSS</h1>
       <h2 align= "center" >MONITOR WHAT</h2>
           </div>
        <div class="menu">
            <ul class="nav">
                
               <li><a href="index.html">Back</a></li>
               
                <li><a class="active" href="ausers.jsp">USERS</a></li>
                <li><a href="atransaction.jsp">TRANSACTION</a></li>
            </ul>
        </div>
            <br><br><br><br><br><br>
            
       <table border="5" align="center" cellspacing="5" cellpadding="5">
            <tr>
                <th>Name</th>
                <th>Mail</th>
                <th>Mobile</th>
                <th>Amount</th>
                <th>UserName</th>
                <th>Password</th>
                    
            </tr>
            <%
             Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mitran","root","root");
          Statement stmt = con.createStatement();
          ResultSet rss = stmt.executeQuery("select * from register");
          while(rss.next())
          {
            %>
            <tr>
                <td><%=rss.getString("name")%></td>
                <td><%=rss.getString("mail")%></td>
                <td><%=rss.getString("number")%></td>
                <td><%=rss.getString("amt")%></td>
                <td><%=rss.getString("uname")%></td>
                <td><%=rss.getString("pass")%></td>
                
            </tr>
            <%
          }
            %>
            
            <t>
        </table>
    </body>
</html>
