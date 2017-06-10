<%-- 
    Document   : displayAccountInfo
    Created on : Jun 7, 2017, 9:08:53 PM
    Author     : Darshan
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .a-margin{
            margin: 10px;
        }
    </style>
    <body>
        <%String name = (String) session.getAttribute("user");
           // String userid = (String) session.getAttribute("userid");
           int acid=Integer.parseInt((String)session.getAttribute("acid"));
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
                      <p><%=session.getAttribute("msg")%></p>
                    <table class="a-margin" border="1">
                        <%
                            try {

                                HttpSession s = request.getSession();
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/worldbank", "root", "root");
                                String sql = "select * from mst_account where account_id=?";
                                PreparedStatement ps = con.prepareStatement(sql);
                                ps.setInt(1, acid);
                                ResultSet rs = ps.executeQuery();
                                while (rs.next()) {%>
                              
                        <tr><td><b>Account no :</b></td><td><%=rs.getInt("account_id")%></td></tr>
                        <tr><td><b>Account Type :<b></td><td><%=rs.getString("account_type")%></td></tr>
                                        <tr><td><b>Balance :</b></td><td><%=rs.getDouble("balance")%></td></tr>

                                        <% }

                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }

                                        %> 
                                        </table>
                                        </div>
                                        </div>

                                        <jsp:include page="footer.jsp"></jsp:include>
                                        </div>


                                        </body>
                                        </html>
