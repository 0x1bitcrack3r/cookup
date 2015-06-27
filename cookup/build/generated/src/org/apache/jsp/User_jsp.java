package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class User_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <script>\n");
      out.write("            function menu()\n");
      out.write("            {\n");
      out.write("                window.location='Menupage.jsp';\n");
      out.write("            }\n");
      out.write("            </script>\n");
      out.write("        <style>\n");
      out.write("            #header {\n");
      out.write("    background-color:#F44336;\n");
      out.write("    color:white;\n");
      out.write("    text-align:center;\n");
      out.write("    padding:5px;\n");
      out.write("}\n");
      out.write("#nav {\n");
      out.write("    line-height:30px;\n");
      out.write("    background-color:#eeeeee;\n");
      out.write("    height:300px;\n");
      out.write("    width:100px;\n");
      out.write("    float:left;\n");
      out.write("    padding:5px;\t      \n");
      out.write("}\n");
      out.write("#section {\n");
      out.write("    width:350px;\n");
      out.write("    float:left;\n");
      out.write("    padding:10px;\t \t \n");
      out.write("}\n");
      out.write("#footer {\n");
      out.write("    background-color:#212121;\n");
      out.write("    color:white;\n");
      out.write("    clear:both;\n");
      out.write("    text-align:center;\n");
      out.write("   padding:5px;\t \t \n");
      out.write("}\n");
      out.write("           .myButton{\n");
      out.write("  color: #FFF;\n");
      out.write("  background-color:#8BC34A;\n");
      out.write("  font-size: 30px;\n");
      out.write("  color: black;\n");
      out.write("  font-weight: bold;\n");
      out.write("}\n");
      out.write(".background {\n");
      out.write("    background-image:url('f1.jpg');\n");
      out.write("    position: relative;\n");
      out.write("     table-layout: fixed; /*Optional*/\n");
      out.write("    border-spacing: 100px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".Row\n");
      out.write("{\n");
      out.write("    display: table;\n");
      out.write("    width: 100%; /*Optional*/\n");
      out.write("    table-layout: fixed; /*Optional*/\n");
      out.write("    border-spacing: 10px; /*Optional*/\n");
      out.write("}\n");
      out.write(".Column\n");
      out.write("{\n");
      out.write("    display: table-cell;\n");
      out.write("     /*Optional*/\n");
      out.write("}\n");
      out.write("#imga {\n");
      out.write("    opacity: 0.8;\n");
      out.write("    filter: alpha(opacity=40);\n");
      out.write("    color:black;/* For IE8 and earlier */\n");
      out.write("}\n");
      out.write(".home-overlay {\n");
      out.write("    background-color: rgba(44, 62, 80, 0.3);\n");
      out.write("    background-image: url(\"pattern.png\");\n");
      out.write("    background-repeat: repeat;\n");
      out.write("    height: 100%;\n");
      out.write("    left: 0;\n");
      out.write("    position: absolute;\n");
      out.write("    top: 0;\n");
      out.write("    width: 100%;\n");
      out.write("    z-index: 0;\n");
      out.write("}\n");
      out.write("   </style>\n");
      out.write("        <title>Chef</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <div id=\"header\">\n");
      out.write("<h1 style=\"font-size:40px\">CookUp</h1>\n");
      out.write("<p align=\"right\"> ");

                String name=(String)session.getAttribute("use"); 
    if ((session.getAttribute("userid")== null) || (session.getAttribute("userid") == "")) {

      out.write("\n");
      out.write("You are not logged in<br/>\n");
      out.write("<a href=\"index.jsp\">Please Login</a>\n");
} else {

      out.write("\n");
      out.write("Welcome</br> ");
      out.print(session.getAttribute("userid"));
      out.write("</br>\n");
      out.write("<a href='logout.jsp'>Log out</a>\n");

    }

      out.write("</p >\n");
      out.write("</div>\n");
      out.write("        <section>\n");
      out.write("        <div>\n");
      out.write("        \n");
      out.write("<div class=\"background\" style=\"padding: 10cm\">\n");
      out.write("    <div class=\"home-overlay\" ><div align=\"center\" class=\"row\">\n");
      out.write("            <div class=\"Column\">\n");
      out.write("            <h1  style=\"color:#F5F5F5;font-size: 40px;font-family: \"Arial Black\", Gadget, sans-serif;\">The simplest way to cook</h1>\n");
      out.write("        <h1  style=\"color:#F5F5F5;font-size: 40px;\">world recipes like a chef, at home.</h1>\n");
      out.write("        <p style=\"color:#F5F5F5;font-size:25px;font-style:bold;\">Recipe box containing exact ingredients </p><p style=\"color:#F5F5F5;font-size:25px;font-style:bold;font-family:LucidaConsole \">and instruction sheet delivered to your doorsteps.</p></div>\n");
      out.write("            <input type=\"button\" class=\"myButton\" onclick=\"menu();\" id=\"a\" value=\"Take me to the menu\">\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("</div></div>\n");
      out.write("    \n");
      out.write("      </div>\n");
      out.write("        </section>\n");
      out.write("<div id=\"footer\">\n");
      out.write("    <div class=\"Row\">\n");
      out.write("        <div class=\"Column\"><h>NO SHOPPING.</h></br>\n");
      out.write("            <h>NO MEASURING</h></br><p>Why shop and think about the measurement of </br>ingredients in your recipes when you can get</br> everything fresh ready to cook.</p></div>\n");
      out.write("        <div class=\"Column\"><h>SAVE MONEY.</h></br> \n");
      out.write("            <h>PAY FOR ONLY WHAT YOU NEED</h></br><p>Pay for exact amount of ingredients required for </br>your recipes. Save yourself from buying excess </br>ingredients.</p></div>\n");
      out.write("        <div class=\"Column\"><h>COOK AT HOME.</h></br>\n");
      out.write("            <h>SPREAD LOVE</h></br><p>We believe health starts with a home-cooked meal. </br>We allow you to cook interesting new recipes at </br>home to surprise your loved ones.</p></div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("© CookUp.com\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("       <div class=\"Row\">\n");
      out.write("            <div class=\"Column\" align=\"center\"><h3 style=\"margin-bottom:0px\">Contact Us</h3></br>\n");
      out.write("                <p>Phone Number:9787405556</br>Email:communicate@cookup.com</br>Address:Vellore</p></div>\n");
      out.write("            <div class=\"Column\" align=\"center\"><h3 style=\"margin-bottom:0px\">Delivery</h3></br>\n");
      out.write("                <p> Free Delivery</br>one day(min) in advance</p>\n");
      out.write("                            \n");
      out.write("            </div>\n");
      out.write("            <div class=\"Column\" align=\"center\"><h3 style=\"margin-bottom:0px\">Follow Us On</h3></br>\n");
      out.write("                <p style=\"margin-top:20px\"><a  href=\"www.facebook.com/cookup\">Facebook</a></br>\n");
      out.write("                    <a href=\"www.twitter.com/cookup\">Twitter</a></p></div>\n");
      out.write("        </div>  \n");
      out.write(" \n");
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
