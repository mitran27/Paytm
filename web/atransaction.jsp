<%-- 
    Document   : sas.jsp
    Created on : Jun 18, 2019, 10:00:58 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*;" %>
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
               
                <li><a href="ausers.jsp">USERS</a></li>
                <li><a class="active" href="atransaction.jsp">TRANSACTION</a></li>
            </ul>
        </div>
            <br><br><br><br><br>
            
       <table border="5" align="center" cellspacing="5" cellpadding="5">
            <tr>
                <th>FROM</th>
                <th>AMOUNT</th>
                <th>TO</th>
                
                    
            </tr>
            <%
             Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mitran","root","root");
          Statement stmt = con.createStatement();
          ResultSet rss = stmt.executeQuery("select * from admin");
          while(rss.next())
          {
            %>
            <tr>
                <td><%=rss.getString("from")%></td>
                <td><%=rss.getString("amt")%></td>
                <td><%=rss.getString("to")%></td>
                
            </tr>
            <%
          }
            %>
            
        </table>
        
    </body>
</html>
