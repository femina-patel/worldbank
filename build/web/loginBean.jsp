<%-- 
    Document   : loginBean
    Created on : Jun 6, 2017, 11:02:10 PM
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
        <%
            try {

                String userid = request.getParameter("userid");
                String password = request.getParameter("password");
                HttpSession s = request.getSession();
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/worldbank", "root", "root");
                String sql = "select * from mst_user where user_id=? and password=?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, userid);
                ps.setString(2, password);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    //if (userid.equals(rs.getString("user_id")) && password.equals(rs.getString("user_id"))) {
                        response.sendRedirect("home.jsp");
                       s.setAttribute("user", rs.getString("full_name"));
                        s.setAttribute("userid", userid);
                  //  }
                }
                else {
                        response.sendRedirect("index.html");
                    }

            } catch (Exception e) {
                e.printStackTrace();
            }

        %>
    </body>
</html>
