<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Menu</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
            function order()
            {
                window.location='bill.jsp';
            }
        </script>
        <style>
            .Row
{
    display: table;
    width: 100%; /*Optional*/
    table-layout: fixed; /*Optional*/
    border-spacing: 10px; /*Optional*/
}
.Column
{
    display: table-cell;
     /*Optional*/
}
.a{
    color:white;
    background-color: black;
}
 
#footer {
    background-color:#212121;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}
#header {
    background-color:#F44336;
    color:white;
    text-align:center;
    padding:5px;
}
        </style>
    </head>
    <body>
        <div id="header"> 
            <form action="notify.jsp" method="POST">
                <div class="Row"> <div class="Column"> Get notified when new recipes are added<input type="email" name="em" placeholder="YourEmail"><input  class="a" type="submit" value="NotifyMe!" name="nty">
                       </form></div></div><p align="right"> <%
                String name=(String)session.getAttribute("use"); 
    if ((session.getAttribute("userid")== null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Try our amazing recipes</br> <%=session.getAttribute("userid")%></br>
<a href='logout.jsp'>Log out</a></br>
<%
    }
%><input type="submit" name="order" style="background-color:aqua" onclick="order();" value="View Cart" ></p >
</div>
        <div><div class="Row">
                
                <div class="Column"><h2 >Thai Red</br>Chicken Curry</h2><a href="trcc.jsp"><img src="1.jpg"/></a></div>
                <div class="Column"><h2>Mint and Cream</br>Chicken Curry</h2><a href="mccc.jsp"><img src="2.jpg"/></a></div>
                <div class="Column"><h2>Penne in</br>white sauce</h2><a href="pws.jsp"><img src="3.jpg"/></a></div>
            </div>
                <div class="Row">
                    <div class="Column"><h2>Green Beans in </br>Pomegranate- Coconut Sauce</h2><a href="gbpcs.jsp"><img src="4.jpg"/></a></div>
                    <div class="Column"><h2>Eggplant in</br>Cashew Coconut Curry </h2><a href="eccc.jsp"><img src="5.jpg"/></a></div>
                    <div class="Column"><h2>Rigatoni with Eggplant and </br>Mushroom in Spicy Tomato Sauce </h2><a href="remsts.jsp"><img src="6.jpg"/></a></div>
            </div>
            <div class="Row">
                <div class="Column"><h2>Chunky </br>Vegetable Paella</h2><a href="cvp.jsp"><img src="7.jpg"/></a></div>
                <div class="Column"><h2>Half Baked </br>Chapati </h2><a href="hbc.jsp"><img src="8.jpg"/></a></div>
                <div class="Column"></div>
            </div>
        </div>
        <div id="footer">
    <div class="Row">
        <div class="Column"><h>WE BELIEVE</h></br>
            <p>health starts with a home cooked </br> meal.</p></div>
        <div class="Column"><h>WE EMPOWER</h></br> 
            <p>you with our recipe box to become a </br>kitchen hero.</p></div>
        <div class="Column"><h>WE TRANSFORM</h></br>
            <p>your kitchen into a lively place.</p></div>
</div>
        </div>
         <div class="Row">
            <div class="Column" align="center"><h3 style="margin-bottom:0px">Contact Us</h3></br>
                <p>Phone Number:9787405556</br>Email:communicate@cookup.com</br>Address:Vellore</p></div>
            <div class="Column" align="center"><h3 style="margin-bottom:0px">Delivery</h3></br>
                <p> Free Delivery</br>one day(min) in advance</p>
                            
            </div>
            <div class="Column" align="center"><h3 style="margin-bottom:0px">Follow Us On</h3></br>
                <p style="margin-top:20px"><a  href="www.facebook.com/cookup">Facebook</a></br>
                    <a href="www.twitter.com/cookup">Twitter</a></p></div>
        </div>
    </body>
</html>
