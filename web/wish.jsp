<%@page import="java.sql.*;" %>
<html>
    <head>
        <title>TRANSACTION  </title>
        
        <meta name="viewport" content="width=device-width">
        <link href="stylew.css" rel="stylesheet" />
    </head>
    <body>
        <div class="header">
            <br>
            <h1 align="center">Transaction</h1>
        </div>
        <div class="menu">
            <ul class="nav">
                
               <li><a href="index.html">Back</a></li>
                
                <li><a href="contact.jsp">Contact</a></li>
                <li><a class="active" href="login.jsp">MY ACCOUNT</a></li>
            </ul>
        </div>
         <div class="content">
       
            <ul class="bav">
                
                 <li><a href="transact.jsp">  Transact</a></li>
                <li><a  href="wish.jsp">Wish Anyone</a></li>
                <li><a href="coupon.jsp">Coupons</a></li>
            </ul>
        </div>
        <%
        String al =(String)session.getAttribute("un");
        %>
        <br><br><br> <br> <br>
         <br> <br> <br>
        <form action="wishser" method="post">
        <table align="center" cellpadding="0" cellspacing="5">
                <tr>
                    <td>To whom</td>
                    <td><input type="text" name="second" /></td>
                </tr>
                 <tr>
                    <td>your wish</td>
                    <td><input type="text" name="wish" /></td>
                </tr>
                 <tr>
                    <td></td>
                    <td><input type="submit" value="SEND"></td>
                </tr>
            </table>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <h4 align="center"> all rights reserved at M taab</h4>
        </form>
    </body>
</html>