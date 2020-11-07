<%-- 
    Document   : sas.jsp
    Created on : Jun 18, 2019, 10:00:58 PM
    Author     : ADMIN
--%>
<%@page import="java.util.*;" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align= "center" >success</h1>
       <%
        String code =(String)session.getAttribute("code");
        %>
        <form action="transact.jsp" method="post">
        <table align="center" cellpadding="0" cellspacing="5">
               
                 <tr>
                    
                    <td><input type="submit" value="BACK"></td>
                </tr>
                <tr></tr> <tr></tr> <tr></tr>
                <tr><td>Coupon code:</td>
                    <td><%System.out.println("hello");%></td>
                </tr>
            </table>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            
        </form>
        
    </body>
</html>
