<%-- 
    Document   : logout
    Created on : Jun 8, 2017, 12:11:41 AM
    Author     : Darshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% 
           session.invalidate();
           response.sendRedirect("index.jsp");
       %>
    </body>
</html>
