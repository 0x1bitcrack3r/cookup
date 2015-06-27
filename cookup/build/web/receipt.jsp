<%-- 
    Document   : bill
    Created on : May 1, 2015, 2:24:02 PM
    Author     : VishnuVarmaRamineni
--%>


<%@page import="java.sql.Statement"%>
<%@page import="com.sun.xml.registry.uddi.bindings_v2_2.Phone"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Receipt</title>
    </head>
    <body style="background-color: #40c4ff">
         <p align="left"> <%
                String name=(String)session.getAttribute("use"); 
    if ((session.getAttribute("userid")== null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Thanks for shopping with us!!!</br> <%=session.getAttribute("userid")%></br>
<a href='logout.jsp'>Log out</a>
<%
    }
%></p >
        <h1 align="center">Order Placed Successfully</h1>
        <% Class.forName("com.mysql.jdbc.Driver");
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cook","root","");
        PreparedStatement pst1 = con.prepareStatement("SELECT * FROM `order` WHERE `user` = ? ");
        pst1.setString(1, session.getAttribute("userid").toString());
        ResultSet res = pst1.executeQuery();
        int totalcost = 0;%>
        <table align="center" border = 1 cellpadding = "15">
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
        <% Class.forName("com.mysql.jdbc.Driver");
        PreparedStatement pst3 = con.prepareStatement("SELECT * FROM receipt WHERE `Name` = ?");
        pst3.setString(1, session.getAttribute("bilusr").toString());
       ResultSet rs=pst3.executeQuery();
       
       %>

       
        <h3 align="center">Cash On Delivery</h3>
    
        <table align="center" border =1>
            <caption> Shipping Address</caption>
            <tr>
                <th>Name</th>
                <th>Address</th>
                <th>Pincode</th>
                <th>Phone Number</th>
            </tr>
     <%      while(rs.next())
{

%>
<tr>
    <td><%=rs.getString(1)%></td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(4)%></td>
</tr>
        <%

}
%>
            
        </table>
          </body>
</html>
