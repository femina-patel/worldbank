<%-- 
    Document   : createAccount
    Created on : Jun 7, 2017, 10:23:17 AM
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
        <% try {
                String userid = request.getParameter("userid");
                String actype = request.getParameter("accountType");
                int pancardno = Integer.parseInt(request.getParameter("pancardno"));
                String agree = request.getParameter("agree");
                HttpSession s = request.getSession();

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/worldbank", "root", "root");
                String sql = "insert into mst_account(user_id,account_type,pancard_no) values(?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, userid);
                ps.setString(2, actype);
                ps.setInt(3, pancardno);
                int result = ps.executeUpdate();
                if (result > 0) {
                    // out.print("Registration successfully...");
                    s.setAttribute("msg", "Account created successfully...");
                    s.setAttribute("userid", userid);
                    response.sendRedirect("home.jsp");
                } else {
                    out.print("Registration failed..");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %> 
    </body>
</html>
