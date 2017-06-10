<%-- 
    Document   : openAccount
    Created on : Jun 7, 2017, 9:50:23 AM
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
        <div id="container">
            <%String name = (String) session.getAttribute("user");
            String userid = (String) session.getAttribute("userid");
                session.setAttribute("contact_status", "null");
            %>

            <link href="css.css" rel="stylesheet" type="text/css"/>
            <jsp:include page="header1.jsp"></jsp:include>

                <div id="content-container">
                    <div id="content">

                        <h2 style="color: red;"><i>
                            <%
                                if (name == null) {%>
                            Welcome Guest
                            <%} else {%>
                            Welcome <%=name%> 
                            <%}%>
                        </i></h2><br/><br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <center><img src="images/index.jpg" width="550" height="400px"/></center>
                </div>

                <div id="aside">
                    <%
                        if (name == null) {%>
                    <h2></h2>


                    <jsp:include page="login.jsp"></jsp:include>

                    <%} else {%>
                    <fieldset>

                        <form action="createAccount.jsp" method="post">
                            <table align="center">
                                <tr>
                                    <td>User ID</td>
                                    <td><input type="text" name="userid" value="<%=userid%>" readonly=""></td>
                                </tr>
                                <tr>
                                    <td>Account Type</td>
                                    <td><select name="accountType">  
                                            <option selected="" value="saving">Saving Account</option>  
                                            <option value="Current">Current Account</option>  
                                        </select></td>
                                </tr>
                                <tr>
                                    <td>Pancard No</td>
                                    <td><input type="text" name="pancardno"></td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="agree" value="agree"></td>
                                    <td> I Agree</td>
                                </tr>

                                <tr>
                                    <td><input type="submit" name="submit" value="Submit"></td>
                                    <td><input type="submit" name="submit" value="Cancel"></td>
                                </tr>
                            </table>
                        </form>
                    </fieldset></center>
                    <%}%>
                </div>

            </div>
            <jsp:include page="footer.jsp"></jsp:include>

        </div>
    </body>
</html>
