import java.io.*;
import java.net.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet(urlPatterns = {"/Registration"})
public class Registration extends HttpServlet {
protected void doPost(HttpServletRequest request, 
HttpServletResponse response)
throws ServletException, IOException {
response.setContentType("text/html;charset=UTF-8");
PrintWriter out = response.getWriter();
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection 
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/details","root","");
PreparedStatement st=con.prepareStatement("insert into datas values (?,?)" );
st.setString( 1 , request.getParameter("user") );
st.setString( 2 , request.getParameter("upwd"));
st.executeUpdate(); 
con.commit();
st.close(); 
con.close();
}catch (ClassNotFoundException err) { System.out.println(err); }
catch (SQLException err) { System.out.println(err); }
out.close();
}
}