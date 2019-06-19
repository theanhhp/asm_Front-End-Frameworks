package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"page\">\n");
      out.write("            <nav class=\"gtco-nav\" role=\"navigation\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-2 col-xs-12\">\n");
      out.write("                        <div id=\"gtco-logo\">\n");
      out.write("                            <a href=\"index.htm\">Admin</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"menu\" >\n");
      out.write("                        <ul>\n");
      out.write("                            <li class=\"btn-cta\"><a href=\"user/list.htm\" ><span>Danh Sách User</span></a></li>\n");
      out.write("                            <li class=\"btn-cta\"><a href=\"staff.htm\" data-nav-section=\"contact\"><span>Thêm Nhân Viên</span></a></li>\n");
      out.write("                            <li class=\"btn-cta\"><a href=\"depart.htm\" data-nav-section=\"contact\"><span>Thêm Nhành</span></a></li>\n");
      out.write("                            <li class=\"btn-cta\"><a href=\"record.htm\" ><span>Khen Thưởng</span></a></li>\n");
      out.write("                            <li class=\"btn-cta\"><a href=\"user/change.htm\" data-nav-section=\"contact\"><span>Đổi Mật Khẩu</span></a></li>\n");
      out.write("                            <li class=\"btn-cta\"><a href=\"user/change.htm\"><span>Ngôn Ngữ</span></a></li>\n");
      out.write("                            <li class=\"btn-cta \"><a href=\"user/login.htm\"><span>Đẳng Xuất</span></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("            <section id=\"gtco-hero\" class=\"gtco-cover\" style=\"background-image: url(images/icons/img_bg_4.jpg);\"  data-section=\"home\"  data-stellar-background-ratio=\"0.5\">\n");
      out.write("                <div class=\"overlay\"></div>\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12 col-md-offset-0 text-center\">\n");
      out.write("                            <div class=\"display-t\">\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <div class=\"img-shadow\" align=\"center\">\n");
      out.write("                <img src=\"images/icons/img_1.jpg\" class=\"img-responsive\" alt=\"Free HTML5 Bootstrap Template by GetTemplates.co\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <section id=\"gtco-our-team\" data-section=\"our-team\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row row-pb-md\">\n");
      out.write("                        <div class=\"col-md-8 col-md-offset-2 heading animate-box\" data-animate-effect=\"fadeIn\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row team-item gtco-team-reverse\">\n");
      out.write("                        <div class=\"col-md-6 col-md-push-7 animate-box\" data-animate-effect=\"fadeInRight\">\n");
      out.write("                            <div class=\"img-shadow\">\n");
      out.write("                                <img src=\"images/icons/img_team_1.jpg\" class=\"img-responsive\" alt=\"Free HTML5 Bootstrap Template by GetTemplates.co\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-6  col-md-pull-6 animate-box\" data-animate-effect=\"fadeInRight\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row team-item gtco-team\">\n");
      out.write("                        <div class=\"col-md-6 col-md-pull-1 animate-box\"  data-animate-effect=\"fadeInLeft\">\n");
      out.write("                            <img src=\"images/icons/img_team_2.jpg\" class=\"img-responsive\" alt=\"Free HTML5 Bootstrap Template by GetTemplates.co\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <br/>\n");
      out.write("    <br/>\n");
      out.write("    <footer>\n");
      out.write("        <div class=\"a\"> Admin</div>\n");
      out.write("    </footer>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
