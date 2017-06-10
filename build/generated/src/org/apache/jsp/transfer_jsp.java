package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class transfer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("                        <form action=\"transferAmount.jsp\" method=\"post\">\n");
      out.write("                            <table align=\"center\">\n");
      out.write("                                ");

                                    try {

                                        HttpSession s = request.getSession();
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/worldbank", "root", "root");
                                        String sql = "select * from account_info";
                                        PreparedStatement ps = con.prepareStatement(sql);
                                        //ps.setString(1, userid);
                                        ResultSet rs = ps.executeQuery();
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>User ID</td>\n");
      out.write("                                    <td><input type=\"text\" name=\"userid\" value=\"");
      out.print(userid);
      out.write("\" readonly=\"\"></td>\n");
      out.write("                                </tr>\n");
      out.write("                                \n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Password</td>\n");
      out.write("                                    <td><input type=\"text\" name=\"password\"></td>\n");
      out.write("                                </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Description</td>\n");
      out.write("                                    <td><input type=\"text\" name=\"desc\"></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>To Account No</td>\n");
      out.write("                                    <td><select name=\"toacno\">\n");
      out.write("                                            ");
 while (rs.next()) {
      out.write("\n");
      out.write("                                            <option value=");
      out.print(rs.getInt("account_id"));
      out.write('>');
      out.print(rs.getInt("account_id"));
      out.write("</option>\n");
      out.write("                                            ");
}
      out.write(" </select></td>\n");
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
