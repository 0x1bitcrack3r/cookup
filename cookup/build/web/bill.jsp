<%-- 
    Document   : bill
    Created on : May 1, 2015, 2:24:02 PM
    Author     : VishnuVarmaRamineni
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
    </head>
    <body style="background-color:#aed581 ">
        <p align="left"> <%
                String name=(String)session.getAttribute("use"); 
    if ((session.getAttribute("userid")== null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Thanks for shopping</br> <%=session.getAttribute("userid")%></br>
<a href='logout.jsp'>Log out</a>
<%
    }
%></p >
        <h3 align="center">Cash On Delivery</h3>
        <% Class.forName("com.mysql.jdbc.Driver");
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cook","root","");
        PreparedStatement pst1 = con.prepareStatement("SELECT * FROM `order` WHERE `user` = ? ");
        pst1.setString(1, session.getAttribute("userid").toString());
        ResultSet res = pst1.executeQuery();
        int totalcost = 0;%>
        <table align="left" style="margin-left: 300px;" border = 1 cellpadding = "15">
            <tr>
            <th>Item Name</th>
            <th>Cost</th>
            </tr>
        
        
        <%while(res.next()){
          
          String code = res.getString(2);
          PreparedStatement pst2 = con.prepareStatement("SELECT * FROM global WHERE `code`=?");
          pst2.setString(1, code);
          ResultSet res2 = pst2.executeQuery();
          res2.first();
          totalcost += Integer.parseInt(res2.getString(3));
        %>
          <tr>
              <td><%=res2.getString(1)%></td>
              <td><%=res2.getString(3)%></td></tr>
          <% } %>
        
        
          <tr><td>Total Cost:</td>
              <td> <%out.println(totalcost);%></td></tr>
        </table>
        <div style="margin-right: 200px;" align="right"><form  action="det.jsp" method="post">
            <table border="1">
                <tr><td>Name:</td><td><input type="text" name="bilusr">
                    </td></tr>
                <tr><td>Shipping Address:</td><td><input type="text" name="ship1"></td>
                </tr>
                <tr><td>Pin code:</td><td><input type="text" name="pin"></td>
                </tr>
                <tr><td>Phone Number:</td><td><input type="text" name="num">
                    </td></tr>
                <tr>
                    <td><input type="submit" name="su" value="Place Order"></td>
                </tr>
                
            </table></form> </div>
        
    </body>
</html>
