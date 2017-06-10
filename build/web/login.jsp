<%-- 
    Document   : login
    Created on : Jun 5, 2017, 5:41:11 PM
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

    <center>
        <fieldset>

            <form action="loginBean.jsp" method="post">
                <table align="center">
                    <tr>
                        <td>User ID</td>
                        <td><input type="text" name="userid"></td>
                    <tr>
                        <td>Password</td>
                        <td><input type="text" name="password"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="submit" value="login">

                        </td>
                    </tr>
                </table>
                Not yet create an Account?<a href="registerView.jsp">Click here</a>
            </form>
        </fieldset></center>
</body>
</html>
