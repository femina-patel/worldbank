package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registerView_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <link rel=\"stylesheet\" href='js-form-validation.css' type='text/css' />  \n");
      out.write("    <script src=\"sample-registration-form-validation.js\"></script>  \n");
      out.write("</head>  \n");
      out.write("<body onload=\"document.registration.userid.focus();\">  \n");
      out.write("    <div id=\"container\">\n");
      out.write("        ");
String name = (String) session.getAttribute("username");
            session.setAttribute("contact_status", "null");
        
      out.write("\n");
      out.write("\n");
      out.write("        <link href=\"css.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"content-container\">\n");
      out.write("            <div id=\"content\">\n");
      out.write("\n");
      out.write("                <fieldset>\n");
      out.write("                    <legend align=\"center\"><h1>Registration</h1></legend>  \n");
      out.write("                    <form name=\"registration\" action=\"register.jsp\" onSubmit=\"return formValidation();\">  \n");
      out.write("                        <table border=\"1\" align=\"center\">\n");
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td>User ID</td>  \n");
      out.write("                                <td><input type=\"text\" name=\"userid\" size=\"12\" /></td>  \n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Password</td>  \n");
      out.write("                                <td><input type=\"password\" name=\"password\" size=\"12\" /></td>  \n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Confirm Password</td>  \n");
      out.write("                                <td><input type=\"password\" name=\"cpassword\" size=\"12\" /></td>  \n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Name\n");
      out.write("                                <td><input type=\"text\" name=\"fname\" placeholder=\"Enter First Name\"/><input type=\"text\" name=\"mname\" placeholder=\"Enter Middle Name\"/>\n");
      out.write("                                    <input type=\"text\" name=\"lname\" placeholder=\"Enter Last Name\"/></td>  \n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Birthdate</td>\n");
      out.write("                                <td><input type=\"text\" name=\"birthdate\" placeholder=\"Enter the birthdate\"/></td>  \n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Gender</td>  \n");
      out.write("                                <td><input type=\"radio\" name=\"gender\" value=\"Male\" />Male\n");
      out.write("                                    <input type=\"radio\" name=\"gender\" value=\"Female\" />Female</td>  \n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Address</td>  \n");
      out.write("                                <td><input type=\"text\" name=\"address\" size=\"50\" placeholder=\"Enter Street or landmark\" /></td>  \n");
      out.write("                            </tr>\n");
      out.write("                            <tr> \n");
      out.write("                                <td>Country</td>\n");
      out.write("                                <td><select name=\"country\">  \n");
      out.write("                                        <option selected=\"\" value=\"India\">India</option>  \n");
      out.write("                                        <option value=\"AL\">Canada</option>  \n");
      out.write("                                        <option value=\"AS\">Russia</option>  \n");
      out.write("                                        <option value=\"AD\">USA</option>  \n");
      out.write("                                    </select></td></tr>\n");
      out.write("\n");
      out.write("                            <tr> \n");
      out.write("                                <td>City</td>\n");
      out.write("                                <td><select name=\"city\">  \n");
      out.write("                                        <option selected=\"\" value=\"pune\">Pune</option>  \n");
      out.write("                                        <option value=\"surat\">Surat</option>  \n");
      out.write("                                        <option value=\"mumbai\">Mumbai</option>  \n");
      out.write("                                        <option value=\"baroda\">Baroda</option>  \n");
      out.write("                                    </select></td></tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Pin Code</td>  \n");
      out.write("                                <td><input type=\"text\" name=\"zip\" placeholder=\"Enter Pin code \"/></td>  \n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Mobile no</td>  \n");
      out.write("                                <td><input type=\"text\" name=\"mobileno\" placeholder=\"Enter Mobile no\" /></td>  \n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Email</td>  \n");
      out.write("                                <td><input type=\"text\" name=\"email\" size=\"50\"placeholder=\"Enter Email ID\" /></td>  \n");
      out.write("                            </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <td><input type=\"submit\" name=\"submit\" value=\"Submit\" /></td> \n");
      out.write("                            <td><input type=\"submit\" name=\"cancel\" value=\"Cancel\" /></td>  \n");
      out.write("                    </form> \n");
      out.write("\n");
      out.write("                </fieldset>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</body>  \n");
      out.write("</html>\n");
      out.write("\n");
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
