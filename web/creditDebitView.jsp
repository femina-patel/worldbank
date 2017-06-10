<%-- 
    Document   : depositView
    Created on : Jun 7, 2017, 11:07:03 PM
    Author     : Darshan
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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

                        <form action="creditDebitAmount.jsp" method="post">
                            <table align="center">
                                <%
                                    try {

                                        HttpSession s = request.getSession();
                                        if(session.getAttribute("msg")==null)
                                            session.setAttribute("msg","");
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/worldbank", "root", "root");
                                        String sql = "select account_id,account_type,balance from mst_account where user_id=?";
                                        PreparedStatement ps = con.prepareStatement(sql);
                                        ps.setString(1, userid);
                                        ResultSet rs = ps.executeQuery();
                                        while (rs.next()) {%>

                                       
                                        
                                <tr>
                                    <td>Account Number</td>
                                    <td><input type="text" name="acno" value=<%=rs.getString("account_id")%>></td>
                                </tr>
                               <tr> 
                                <td>Type</td>
                                <td><select name="type">  
                                        <option selected="" value="0">Deposit</option>  
                                        <option value="1">Withdraw</option>  
                                    </select></td></tr>
                                <tr>
                                    <td>Balance</td>
                                    <td><%=rs.getString("balance")%></td>
                                </tr>
                                <tr>
                                    <td>Amount</td>
                                    <td><input type="text" name="amount"></td>
                                </tr>

                                <tr>
                                    <td><input type="submit" name="submit" value="Submit"></td>
                                    <td><input type="submit" name="submit" value="Cancel"></td>
                                </tr>
                                <% }
session.setAttribute("msg", "");
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }

                                %> 
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
