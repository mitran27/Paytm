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
                 <li><a href="fileattach.jsp">file</a></li>
            </ul>
        </div>
        <%
        String al =(String)session.getAttribute("un");
        %>
        <br><br><br> <br> <br>
         <br> <br> <br>
        <form action="up.jsp" method="post">
        <table align="center" cellpadding="0" cellspacing="5">
               <tr>
                  <td>FILE ATTACH</td>
                  <td><input type="file" name="file" value="">
                      
                    </tr>
                    <tr>
                        
                        
                        <td>
                            
                        </td>
                        <td><input type="submit" value="send">
                            
                            </td>
                            
                        </tr>
            </table>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <h4 align="center"> all rights reserved at M taab</h4>
        </form>
    </body>
</html>