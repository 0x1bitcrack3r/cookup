
<%@ page import ="java.sql.*" %>
<%
    String code = request.getParameter("ord");    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cook",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
   PreparedStatement at = con.prepareStatement("select * from global  Where code =?");
   at.setString(1,code);
   rs = at.executeQuery();
    while(rs.next()) {
     String a=rs.getString(1);
     int b=Integer.parseInt(rs.getString(3));
        out.println(a);
        out.println(b);
    }
%>