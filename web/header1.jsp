<%-- 
    Document   : header1
    Created on : Jun 5, 2017, 5:40:35 PM
    Author     : Darshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%String name = (String) session.getAttribute("user");%>

        <div id="header">
            <img src="images/World-bank-logo.gif"/>

        </div>

        <div id="navigation">
            <ul>

                <li><a href="index.jsp">Home</a></li>
                    <%
                        if (name != null) {%>
                <li> <a href="displayAccountInfo.jsp">My Account</a></li>
                <li> <a href="creditDebitView.jsp">Deposite-Withdraw</a></li>
                <%-- <li> <a href="withdraw.jsp">Withdraw</a></li>--%>
                <li> <a href="transfer.jsp">Transfer Money</a></li>
                    <%}%>



                <li><a href="about.jsp">About us</a></li>
                <li><a href="contact.jsp">Contact us</a></li>
                    <%
                        if (name != null) {%>
                <li> <a href="logout.jsp">Logout</a></li>
                    <%}%>
            </ul>


        </div>
    </body>
</html>
