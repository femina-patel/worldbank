<%-- 
    Document   : home
    Created on : Jun 5, 2017, 5:35:35 PM
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
        <%String name = (String) session.getAttribute("user");
            String userid = (String) session.getAttribute("userid");

            if (name == null) {
                response.sendRedirect("index.jsp");
            }
        %>
        <div id="container">
            <link href="css.css" rel="stylesheet" type="text/css">
            <jsp:include page="header1.jsp"></jsp:include>

                <div id="content-container">
                    <div id="content">
                        <h2 style="color: blue;"><i>Welcome <%=name%></i></h2><br/><br/>
                   
                    <center>
                        <img alt="home"  src="images/home.jpg" width="550" height="400px"/></center>
                </div>

                <div id="aside">
                    <p><br>
                        <br>
                        Online banking is the practice of making bank transactions or paying bills via the Internet.
                        Banking online allows a customer to make deposits, withdrawals, transfers with the click of a mouse.
                        Online banking also eliminates paper waste, which is a plus not only for those who have to handle all the paper work, but also for the environment.
                        Security is always an issue with Internet transactions. Although information is encrypted , and the chances of an account being hacked are slim, it happen.
                    </p>
                </div>
            </div>

            <jsp:include page="footer.jsp"></jsp:include>
        </div>

    </body>
</html>
