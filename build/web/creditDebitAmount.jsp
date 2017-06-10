<%-- 
    Document   : depositAmount
    Created on : Jun 7, 2017, 11:34:03 PM
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
                // String userid = request.getParameter("userid");
                int acid = Integer.parseInt(request.getParameter("acno"));
                byte type = Byte.parseByte(request.getParameter("type"));
                double amt = Double.parseDouble(request.getParameter("amount"));
                HttpSession s = request.getSession();

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/worldbank", "root", "root");
                String sql = "insert into trn_transaction(account_id,trn_type,amount) values(?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, acid);
                ps.setString(2, ""+type);
                ps.setDouble(3, amt);
                ps.executeUpdate();
                amt= type == 1 ? amt*-1 : amt;
                String sql1 = "update mst_account a set a.balance=a.balance+? where a.account_id=?";
                ps = con.prepareStatement(sql1);
                ps.setDouble(1, amt);
                ps.setInt(2, acid);
                int result = ps.executeUpdate();
                if (result > 0) {
                    s.setAttribute("msg", (type == 0 ? "Deposited": "Withdrawn") +" successfully...");
                    s.setAttribute("acid", Integer.toString(acid));
                    response.sendRedirect("displayAccountInfo.jsp");
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        %> 
    </body>
</html>
