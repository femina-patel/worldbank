package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class creditDebitView_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"container\">\n");
      out.write("            ");
String name = (String) session.getAttribute("user");
                String userid = (String) session.getAttribute("userid");
                session.setAttribute("contact_status", "null");
            
      out.write("\n");
      out.write("\n");
      out.write("            <link href=\"css.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header1.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("                <div id=\"content-container\">\n");
      out.write("                    <div id=\"content\">\n");
      out.write("\n");
      out.write("                        <h2 style=\"color: red;\"><i>\n");
      out.write("                            ");

                                if (name == null) {
      out.write("\n");
      out.write("                            Welcome Guest\n");
      out.write("                            ");
} else {
      out.write("\n");
      out.write("                            Welcome ");
      out.print(name);
      out.write(" \n");
      out.write("                            ");
}
      out.write("\n");
      out.write("                        </i></h2><br/><br/>\n");
      out.write("                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    <center><img src=\"images/index.jpg\" width=\"550\" height=\"400px\"/></center>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div id=\"aside\">\n");
      out.write("                    ");

                        if (name == null) {
      out.write("\n");
      out.write("                    <h2></h2>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "login.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("                    ");
} else {
      out.write("\n");
      out.write("                    <fieldset>\n");
      out.write("\n");
      out.write("                        <form action=\"creditDebitAmount.jsp\" method=\"post\">\n");
      out.write("                            <table align=\"center\">\n");
      out.write("                                ");

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
                                        while (rs.next()) {
      out.write("\n");
      out.write("\n");
      out.write("                                        ");
      out.print(session.getAttribute("msg"));
      out.write("\n");
      out.write("                                        \n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Account Number</td>\n");
      out.write("                                    <td>");
      out.print(rs.getString("account_id"));
      out.write("</td>\n");
      out.write("                                </tr>\n");
      out.write("                               <tr> \n");
      out.write("                                <td>Type</td>\n");
      out.write("                                <td><select name=\"type\">  \n");
      out.write("                                        <option selected=\"\" value=\"0\">Deposit</option>  \n");
      out.write("                                        <option value=\"1\">Withdraw</option>  \n");
      out.write("                                    </select></td></tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Balance</td>\n");
      out.write("                                    <td>");
      out.print(rs.getString("balance"));
      out.write("</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Amount</td>\n");
      out.write("                                    <td><input type=\"text\" name=\"amount\"></td>\n");
      out.write("                                </tr>\n");
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    <td><input type=\"submit\" name=\"submit\" value=\"Submit\"></td>\n");
      out.write("                                    <td><input type=\"submit\" name=\"submit\" value=\"Cancel\"></td>\n");
      out.write("                                </tr>\n");
      out.write("                                ");
 }
session.setAttribute("msg", "");
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }

                                
      out.write(" \n");
      out.write("                            </table>\n");
      out.write("\n");
      out.write("                        </form>\n");
      out.write("                    </fieldset></center>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
