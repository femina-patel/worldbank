<%-- 
    Document   : transferAmount
    Created on : Jun 8, 2017, 11:02:11 AM
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
                int fromacid = Integer.parseInt(request.getParameter("acid"));
                String desc = request.getParameter("desc");
                int toacid = Integer.parseInt(request.getParameter("toacno"));
                double amt = Double.parseDouble(request.getParameter("amount"));
                HttpSession s = request.getSession();

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/worldbank", "root", "root");
                String sql = "insert into trn_transfer(from_account_id,description,to_account_id,amount) values(?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, fromacid);
                ps.setString(2, desc);
                ps.setInt(3, toacid);
                ps.setDouble(4, amt);
                ps.executeUpdate();
                String sql1 = "update mst_account a set a.balance=a.balance+? where a.account_id=?";
                ps = con.prepareStatement(sql1);
                ps.setDouble(1, amt);
                ps.setInt(2, toacid);
                int result1 = ps.executeUpdate();
                if (result1 > 0) {
                    s.setAttribute("msg", "Transfered successfully...");
                    s.setAttribute("acid", Integer.toString(fromacid));
                    response.sendRedirect("displayAccountInfo.jsp");
                }
                String sql2 = "update mst_account a set a.balance=a.balance-? where a.account_id=?";
                ps = con.prepareStatement(sql2);
                ps.setDouble(1, amt);
                ps.setInt(2, fromacid);
                int result2 = ps.executeUpdate();
                if (result2 > 0) {
                    s.setAttribute("msg", "Transfered successfully...");
                    s.setAttribute("acid", Integer.toString(fromacid));
                    response.sendRedirect("displayAccountInfo.jsp");
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        %> 
    </body>
</html>
