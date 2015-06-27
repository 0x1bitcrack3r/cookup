<%-- 
    Document   : notify
    Created on : May 1, 2015, 2:35:09 PM
    Author     : VishnuVarmaRamineni
--%>
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
    <body>
        <% Class.forName("com.mysql.jdbc.Driver");
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cook",
            "root", "");
        PreparedStatement pst = con.prepareStatement("INSERT INTO `notify`(`Email`) VALUES (?)");
        
        pst.setString(1, request.getParameter("em"));
        pst.execute();
        %>
        <script>
            setTimeout(function(){
                self.location = "Menupage.jsp";
            },2000);
        </script>
    </body>
</html>
