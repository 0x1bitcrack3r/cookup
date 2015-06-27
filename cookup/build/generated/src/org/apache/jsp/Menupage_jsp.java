package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Menupage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--\r\n");
      out.write("To change this license header, choose License Headers in Project Properties.\r\n");
      out.write("To change this template file, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("-->\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Menu</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <style>\r\n");
      out.write("            .Row\r\n");
      out.write("{\r\n");
      out.write("    display: table;\r\n");
      out.write("    width: 100%; /*Optional*/\r\n");
      out.write("    table-layout: fixed; /*Optional*/\r\n");
      out.write("    border-spacing: 10px; /*Optional*/\r\n");
      out.write("}\r\n");
      out.write(".Column\r\n");
      out.write("{\r\n");
      out.write("    display: table-cell;\r\n");
      out.write("     /*Optional*/\r\n");
      out.write("}\r\n");
      out.write(".a{\r\n");
      out.write("    color:white;\r\n");
      out.write("    background-color: black;\r\n");
      out.write("}\r\n");
      out.write(" \r\n");
      out.write("#footer {\r\n");
      out.write("    background-color:#212121;\r\n");
      out.write("    color:white;\r\n");
      out.write("    clear:both;\r\n");
      out.write("    text-align:center;\r\n");
      out.write("   padding:5px;\t \t \r\n");
      out.write("}\r\n");
      out.write("#header {\r\n");
      out.write("    background-color:#F44336;\r\n");
      out.write("    color:white;\r\n");
      out.write("    text-align:center;\r\n");
      out.write("    padding:5px;\r\n");
      out.write("}\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div id=\"header\">\r\n");
      out.write("            <form action=\"notify.jsp\" method=\"POST\">\r\n");
      out.write("                <div class=\"Row\"> <div class=\"Column\"> Get notified when new recipes are added<input type=\"email\" name=\"em\" placeholder=\"YourEmail\"><input  class=\"a\" type=\"submit\" value=\"NotifyMe!\" name=\"nty\">\r\n");
      out.write("            </form></div></div><p align=\"right\"> ");

                String name=(String)session.getAttribute("use"); 
    if ((session.getAttribute("userid")== null) || (session.getAttribute("userid") == "")) {

      out.write("\r\n");
      out.write("You are not logged in<br/>\r\n");
      out.write("<a href=\"index.jsp\">Please Login</a>\r\n");
} else {

      out.write("\r\n");
      out.write("Try our amazing recipes</br> ");
      out.print(session.getAttribute("userid"));
      out.write("</br>\r\n");
      out.write("<a href='logout.jsp'>Log out</a>\r\n");

    }

      out.write("</p >\r\n");
      out.write("</div>\r\n");
      out.write("        <div><div class=\"Row\">\r\n");
      out.write("                \r\n");
      out.write("                <div class=\"Column\"><h2 >Thai Red</br>Chicken Curry</h2><a href=\"trcc.jsp\"><img src=\"1.jpg\"/></a></div>\r\n");
      out.write("                <div class=\"Column\"><h2>Mint and Cream</br>Chicken Curry</h2><a href=\"mccc.jsp\"><img src=\"2.jpg\"/></a></div>\r\n");
      out.write("                <div class=\"Column\"><h2>Penne in</br>white sauce</h2><a href=\"pws.jsp\"><img src=\"3.jpg\"/></a></div>\r\n");
      out.write("            </div>\r\n");
      out.write("                <div class=\"Row\">\r\n");
      out.write("                    <div class=\"Column\"><h2>Green Beans in </br>Pomegranate- Coconut Sauce</h2><a href=\"gbpcs.jsp\"><img src=\"4.jpg\"/></a></div>\r\n");
      out.write("                    <div class=\"Column\"><h2>Eggplant in</br>Cashew Coconut Curry </h2><a href=\"eccc.jsp\"><img src=\"5.jpg\"/></a></div>\r\n");
      out.write("                    <div class=\"Column\"><h2>Rigatoni with Eggplant and </br>Mushroom in Spicy Tomato Sauce </h2><a href=\"remsts.html\"><img src=\"6.jpg\"/></a></div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"Row\">\r\n");
      out.write("                <div class=\"Column\"><h2>Chunky </br>Vegetable Paella</h2><a href=\"cvp.jsp\"><img src=\"7.jpg\"/></a></div>\r\n");
      out.write("                <div class=\"Column\"><h2>Half Baked </br>Chapati </h2><a href=\"hbc.jsp\"><img src=\"8.jpg\"/></a></div>\r\n");
      out.write("                <div class=\"Column\"></div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"footer\">\r\n");
      out.write("    <div class=\"Row\">\r\n");
      out.write("        <div class=\"Column\"><h>WE BELIEVE</h></br>\r\n");
      out.write("            <p>health starts with a home cooked </br> meal.</p></div>\r\n");
      out.write("        <div class=\"Column\"><h>WE EMPOWER</h></br> \r\n");
      out.write("            <p>you with our recipe box to become a </br>kitchen hero.</p></div>\r\n");
      out.write("        <div class=\"Column\"><h>WE TRANSFORM</h></br>\r\n");
      out.write("            <p>your kitchen into a lively place.</p></div>\r\n");
      out.write("</div>\r\n");
      out.write("        </div>\r\n");
      out.write("         <div class=\"Row\">\r\n");
      out.write("            <div class=\"Column\" align=\"center\"><h3 style=\"margin-bottom:0px\">Contact Us</h3></br>\r\n");
      out.write("                <p>Phone Number:9787405556</br>Email:communicate@cookup.com</br>Address:Vellore</p></div>\r\n");
      out.write("            <div class=\"Column\" align=\"center\"><h3 style=\"margin-bottom:0px\">Delivery</h3></br>\r\n");
      out.write("                <p> Free Delivery</br>one day(min) in advance</p>\r\n");
      out.write("                            \r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"Column\" align=\"center\"><h3 style=\"margin-bottom:0px\">Follow Us On</h3></br>\r\n");
      out.write("                <p style=\"margin-top:20px\"><a  href=\"www.facebook.com/cookup\">Facebook</a></br>\r\n");
      out.write("                    <a href=\"www.twitter.com/cookup\">Twitter</a></p></div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
