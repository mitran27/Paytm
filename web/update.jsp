<%-- 
    Document   : update
    Created on : Jun 22, 2019, 7:59:36 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
String aa=request.getParameter("a");
       session.setAttribute("id", aa);
        Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mitran","root","root");
          Statement stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("select * from register where no='"+aa+"'");
          if(rs.next())
          {
                %>
                <form action="updser" method="post">
                 <table align="center" border="1" cellpadding="3" cellspacing="3">
                 
                          <tr>
                         <td>Amount</td>
                         <td><input type="text" name="amt2" value= "<%=rs.getString("amt")%>">
                         </tr>
                          <tr>
                         <td>password</td>
                         <td><input type="text" name="pass2" value= "<%=rs.getString("pass")%>">
                         </tr>
                         <tr>
                              <td><a href="admin.jsp">cancel</a></td>
                <td><input type="submit" value="update" /></td>
                             </tr>
                         <%}
          %>
                          
                     </table>
                    </form>
    </body>
</html>
