<%-- 
    Document   : det
    Created on : May 1, 2015, 5:40:53 PM
    Author     : VishnuVarmaRamineni
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% Class.forName("com.mysql.jdbc.Driver");
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cook",
            "root", "");
        PreparedStatement pst = con.prepareStatement("INSERT INTO `receipt`(`Name`, `Shipping Address`, `Pin Code`, `Phone Number`) VALUES (?,?,?,?) ");
        pst.setString(1, request.getParameter("bilusr"));
        pst.setString(2, request.getParameter("ship1"));
        pst.setString(3, request.getParameter("pin"));
        pst.setString(4, request.getParameter("num"));
        pst.execute();
        session.setAttribute("bilusr", request.getParameter("bilusr"));
        %><h1>Please wait for your order request.......</h1>
        <script>
            setTimeout(function(){
                self.location = "receipt.jsp";
            },2000);
        </script>
    </body>
</html>
