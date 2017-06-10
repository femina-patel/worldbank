package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("      <div id=\"container\">\n");
      out.write("    ");
String name=(String)session.getAttribute("username");
    session.setAttribute("contact_status","null");    			      					      			
    
      out.write("\n");
      out.write("    \n");
      out.write("<link href=\"css.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"content-container\">\n");
      out.write("<div id=\"content\">\n");
      out.write("\n");
      out.write("<h2 style=\"color: red;\"><i>\n");
      out.write("            ");

            if(name==null)
            {
      out.write("\n");
      out.write("                Welcome Guest\n");
      out.write("            ");
}
            else
            {
      out.write("\n");
      out.write("            \t Welcome ");
      out.print(name);
      out.write(" \n");
      out.write("            ");
}
      out.write("\n");
      out.write("            </i></h2><br/><br/>\n");
      out.write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("<center><img src=\"images/index.jpg\" width=\"550\" height=\"400px\"/></center>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"aside\">\n");
      out.write("    ");

    if(name==null)
    {
      out.write("\n");
      out.write("<h2></h2>\n");
      out.write("\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "login.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("    ");
}
    else
      {
      out.write("\n");
      out.write("        <p>* Online banking is the practice of making bank transactions or paying bills via the Internet.\n");
      out.write("<br/></br>* Banking online allows a customer to make deposits, withdrawals, transfers with the click of a mouse.\n");
      out.write("<br/><br/>* Online banking also eliminates paper waste, which is a plus not only for those who have to handle all the paper work, but also for the environment.\n");
      out.write("<br/><br/>* Security is always an issue with Internet transactions. Although information is encrypted , and the chances of an account being hacked are slim, it happen.\n");
      out.write("</p>\n");
      out.write("    ");
}
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</div>\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
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
