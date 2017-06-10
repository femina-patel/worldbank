<%-- 
    Document   : register
    Created on : Jun 6, 2017, 10:22:21 PM
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
                String password = request.getParameter("password");
                String fname = request.getParameter("fname");
                String mname = request.getParameter("mname");
                String lname = request.getParameter("lname");
                String birthdate = request.getParameter("birthdate");
                String gender = request.getParameter("gender");
                String address = request.getParameter("address");
                String country = request.getParameter("country");
                String city = request.getParameter("city");
                String pincode = request.getParameter("pincode");
                String mobileno = request.getParameter("mobileno");
                String email = request.getParameter("email");
                HttpSession s = request.getSession();

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/worldbank", "root", "root");
                String sql = "insert into mst_user values(?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, userid);
                ps.setString(2, password);
                ps.setString(3, fname + " " + mname + " " + lname);
                ps.setString(4, birthdate);
                ps.setString(5, gender);
                ps.setString(6, address);
                ps.setString(7, country);
                ps.setString(8, city);
                ps.setString(9, pincode);
                ps.setString(10, mobileno);
                ps.setString(11, email);
                int result = ps.executeUpdate();
                if (result > 0) {
                   // out.print("Registration successfully...");
                   request.setAttribute("msg", "Registration successfully...");
                   s.setAttribute("userid", userid);
                    s.setAttribute("user",fname+" "+mname+" "+lname);
                   response.sendRedirect("openAccount.jsp");
                   
                } else {
                    out.print("Registration failed..");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %> 
    </body>
</html>
