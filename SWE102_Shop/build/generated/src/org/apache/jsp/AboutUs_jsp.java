package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AboutUs_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_url_var_value_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_url_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_if_test.release();
    _jspx_tagPool_c_url_var_value_nobody.release();
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
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("<html lang=\"zxx\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <title>Phong VU Digital</title>\n");
      out.write("        <link rel=\"icon\" href=\"http://icons.iconarchive.com/icons/crountch/one-piece-jolly-roger/256/Luffys-flag-2-icon.png\"  \n");
      out.write("              <!--/tags -->\n");
      out.write("              <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <meta name=\"keywords\" content=\"Grocery Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("        <script>\n");
      out.write("            addEventListener(\"load\", function () {\n");
      out.write("                setTimeout(hideURLbar, 0);\n");
      out.write("            }, false);\n");
      out.write("\n");
      out.write("            function hideURLbar() {\n");
      out.write("                window.scrollTo(0, 1);\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <!--//tags -->\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <link href=\"css/font-awesome.css\" rel=\"stylesheet\">\n");
      out.write("        <!--pop-up-box-->\n");
      out.write("        <link href=\"css/popuo-box.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <!--//pop-up-box-->\n");
      out.write("        <!-- price range -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/jquery-ui1.css\">\n");
      out.write("        <!-- fonts -->\n");
      out.write("        <link href=\"//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <!-- top-header -->\n");
      out.write("        <div class=\"header-most-top\">\n");
      out.write("            <p></p>\n");
      out.write("        </div>\n");
      out.write("        <!-- //top-header -->\n");
      out.write("        <!-- header-bot-->\n");
      out.write("        <div class=\"header-bot\">\n");
      out.write("            <div class=\"header-bot_inner_wthreeinfo_header_mid\">\n");
      out.write("                <!-- header-bot-->\n");
      out.write("                <div class=\"col-md-4 logo_agile\">\n");
      out.write("                    <h1>\n");
      out.write("                        ");
      if (_jspx_meth_c_url_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${list}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                            <span>P</span>hong\n");
      out.write("                            <span>V</span>u Digital\n");
      out.write("                            <img src=\"images/luffy.png\" alt=\" \" width=\"80\" height=\"80\"/>\n");
      out.write("                        </a>\n");
      out.write("                    </h1>\n");
      out.write("                </div>\n");
      out.write("                <!-- header-bot -->\n");
      out.write("                <div class=\"col-md-8 header\">\n");
      out.write("                    <!-- header lists -->\n");
      out.write("                    <ul>\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a class=\"play-icon popup-with-zoom-anim\" href=\"#small-dialog1\">\n");
      out.write("                                <span class=\"fa fa-map-marker\" aria-hidden=\"true\"></span> Shop Locator</a>\n");
      out.write("                        </li> \n");
      out.write("                        <li>\n");
      out.write("                            <span class=\"fa fa-phone\" aria-hidden=\"true\"></span> 001 234 5678\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"AboutUs.jsp\" data-toggle=\"\" data-target=\"\">\n");
      out.write("                                <span class=\"fa fa-unlock-alt\" aria-hidden=\"true\"></span> About us </a>\n");
      out.write("                        </li>\n");
      out.write("                        ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                    <!-- //header lists -->\n");
      out.write("                    <!-- search -->\n");
      out.write("                    <div class=\"agileits_search\">\n");
      out.write("                        <form action=\"#\" method=\"post\">\n");
      out.write("                            <input name=\"Search\" type=\"search\" placeholder=\"How can we help you today?\" required=\"\">\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-default\" aria-label=\"Left Align\">\n");
      out.write("                                <span class=\"fa fa-search\" aria-hidden=\"true\"> </span>\n");
      out.write("                            </button>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- //search -->\n");
      out.write("                    <!-- cart details -->\n");
      out.write("                    <div class=\"top_nav_right\">\n");
      out.write("                        <div class=\"wthreecartaits wthreecartaits2 cart cart box_1\">\n");
      out.write("                            <form action=\"#\" method=\"post\" class=\"last\">\n");
      out.write("                                <input type=\"hidden\" name=\"cmd\" value=\"_cart\">\n");
      out.write("                                <input type=\"hidden\" name=\"display\" value=\"1\">\n");
      out.write("                                <button class=\"w3view-cart\" type=\"submit\" name=\"submit\" value=\"\">\n");
      out.write("                                    <i class=\"fa fa-cart-arrow-down\" aria-hidden=\"true\"></i>\n");
      out.write("                                </button>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- //cart details -->\n");
      out.write("                    <div class=\"clearfix\"></div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"clearfix\"></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- //Modal2 -->\n");
      out.write("        <!-- //signup Model -->\n");
      out.write("        <!-- //header-bot -->\n");
      out.write("        <!-- navigation -->\n");
      out.write("\n");
      out.write("        <!-- top Products -->\n");
      out.write("        <div class=\"ads-grid\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("\n");
      out.write("                <div class=\"side-bar col-md-3\">\n");
      out.write("                    <!-- discounts -->\n");
      out.write("                    <div class=\"left-side\">\n");
      out.write("                        <img src=\"abME.jpg\" class=\"img-thumbnail\" alt=\"Cinque Terre\" width=\"304\" height=\"236\"> \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"agileinfo-ads-display col-md-9\">\n");
      out.write("                    <div class=\"wrapper\">\n");
      out.write("                        <!-- first section (nuts) -->\n");
      out.write("                        <h1 class=\"mb-0\">NGUYEN NGOC\n");
      out.write("                            <span><!--class=\"text-primary\"--> HIEN</span>\n");
      out.write("                        </h1>\n");
      out.write("                        <p class=\"text-danger\"> - HIENNNHE130005</p><br>\n");
      out.write("                        <p class=\"text-danger\"> Contact : <span class=\"text-success\">hiennnhe130005@fpt.edu.vn</span> - <span class=\"text-primary\">hien181999@gmail.com</span> </h1>\n");
      out.write("                        <p class=\"text-danger\"> Phone : <span class=\"text-success\">0964437021</span>\n");
      out.write("                        <p class=\"text-danger\"> Address : <span class=\"text-success\">NASA</span>\n");
      out.write("                       \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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

  private boolean _jspx_meth_c_url_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_0 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_0.setPageContext(_jspx_page_context);
    _jspx_th_c_url_0.setParent(null);
    _jspx_th_c_url_0.setValue("/ProductController");
    _jspx_th_c_url_0.setVar("list");
    int _jspx_eval_c_url_0 = _jspx_th_c_url_0.doStartTag();
    if (_jspx_th_c_url_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_var_value_nobody.reuse(_jspx_th_c_url_0);
      return true;
    }
    _jspx_tagPool_c_url_var_value_nobody.reuse(_jspx_th_c_url_0);
    return false;
  }

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.username == null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                            <li>\n");
        out.write("                                <a href=\"Login.jsp\" data-toggle=\"\" data-target=\"Login.jsp\">\n");
        out.write("                                    <span class=\"fa fa-unlock-alt\" aria-hidden=\"true\"></span> Sign In </a>\n");
        out.write("                            </li>\n");
        out.write("                            ");
        if (_jspx_meth_c_url_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                <li>\n");
        out.write("                                    <a href=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${SignUp}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" data-toggle=\"modal\" data-target=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${SignUp}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">\n");
        out.write("                                    <span class=\"fa fa-pencil-square-o\" aria-hidden=\"true\"></span> Sign Up </a> \n");
        out.write("                            </li>  \n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_url_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_1 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_1.setPageContext(_jspx_page_context);
    _jspx_th_c_url_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_url_1.setValue("/SignUpController");
    _jspx_th_c_url_1.setVar("SignUp");
    int _jspx_eval_c_url_1 = _jspx_th_c_url_1.doStartTag();
    if (_jspx_th_c_url_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_var_value_nobody.reuse(_jspx_th_c_url_1);
      return true;
    }
    _jspx_tagPool_c_url_var_value_nobody.reuse(_jspx_th_c_url_1);
    return false;
  }

  private boolean _jspx_meth_c_if_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent(null);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.username != null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                            <li>\n");
        out.write("                                <div class=\"dropdown\">\n");
        out.write("                                    <button type=\"button\" class=\"btn btn-primary dropdown-toggle\" data-toggle=\"dropdown\">\n");
        out.write("                                        ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\n");
        out.write("                                    </button>\n");
        out.write("                                    <div class=\"dropdown-menu dropdown-menu-right\">\n");
        out.write("                                        ");
        if (_jspx_meth_c_url_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_1, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("                                            <a class=\"dropdown-item\" href=\"#\">    Information</a><br>\n");
        out.write("                                            <div class=\"dropdown-divider\"></div><br>\n");
        out.write("                                            <a class=\"dropdown-item\" href=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Out}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">     Log Out</a><br>\n");
        out.write("\n");
        out.write("                                    </div>\n");
        out.write("                                </div>\n");
        out.write("                            </li>\n");
        out.write("                        ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_url_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_1, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_url_2 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _jspx_tagPool_c_url_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_url_2.setPageContext(_jspx_page_context);
    _jspx_th_c_url_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_1);
    _jspx_th_c_url_2.setValue("/LogOutController");
    _jspx_th_c_url_2.setVar("Out");
    int _jspx_eval_c_url_2 = _jspx_th_c_url_2.doStartTag();
    if (_jspx_th_c_url_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_url_var_value_nobody.reuse(_jspx_th_c_url_2);
      return true;
    }
    _jspx_tagPool_c_url_var_value_nobody.reuse(_jspx_th_c_url_2);
    return false;
  }
}
