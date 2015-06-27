import java.io.*;
import java.util.*;
import java.net.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
class Cpr
{
public String name;
public int count;
public Cpr( String n , int c)
{
name = n;
count = c;
}
}
public class NewServlet extends HttpServlet {
public  Cpr  rSet(HttpServletRequest  req,HttpServletResponse  response)  throws 
ServletException, IOException 
{
Cpr cobj[]= new Cpr[ 5 ];
int i = 0;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection 
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/voting","root","");
Statement st1 = conn.createStatement();
ResultSet res;
res=st1.executeQuery("select * from votes"); 
while(res.next()) 
cobj[i++] = new Cpr(res.getString(1),res.getInt(2)); 
st1.close(); 
conn.close(); 
}catch (ClassNotFoundException err) { }
catch (SQLException err) { }
int j = 0;
for (j = 0 ; j < cobj.length ; j++ )
{
if (cobj[ j ].name.equalsIgnoreCase(req.getParameter("Composer")))
{
cobj[ j ].count++;
break;
}
}
displayServlet(cobj,response);
return cobj[j];
}
public void displayServlet(Cpr c1[], HttpServletResponse response)
throws ServletException, IOException 
{
response.setContentType("text/html");
PrintWriter out = response.getWriter();
out.println("<html><title>Display Form</title>" +
"<BODY BGCOLOR=\"orange\">\n" +
"<H1 ALIGN=\"CENTER\">" + "MOST FAVOURITE COMPOSER" + "</H1>\n" +
"<TABLE BORDER=1 ALIGN=CENTER>\n" +
"<TR BGCOLOR=\"red\">\n" +
"<TH style=\"color :orange\"><h2>Composer Name</h2><TH><h3>vote</h3>");
out.println("<UL>");
for(int i=0; i<c1.length; i++) {
out.println("<TR BGCOLOR=\"red\">");
out.println("<TD style=\"font-size:20pt ; color :orange\">" + c1[i].name);
out.println("<TD style=\"font-size:20pt\">" + c1[i].count);
out.println("</TR>");
}
out.println("</TABLE>\n</BODY></HTML>");
}
public void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
response.setContentType("text/html");
PrintWriter out = response.getWriter(); 
Cpr co = rSet(request ,response);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection 
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/voting","root","");
PreparedStatement st = conn.prepareStatement("update poll set Name = ? Where  count=?");
st.setInt(1,co.count); 
st.setString(2,co.name);
st.executeUpdate();
st.close();
conn.commit();
conn.close();
}catch (ClassNotFoundException err) { }
catch (SQLException err) { }
}
}