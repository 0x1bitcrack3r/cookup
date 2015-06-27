<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
.Pd
{
    padding-right: 100px;
    padding-top: 20px;
}
   #header {
    background-color:#F44336;
    color:white;
    text-align:center;
    padding:5px;}
   #footer {
    background-color:#212121;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}
        </style>
    </head>
    <body>
          <div id="header">
<h1>Our Recipes</h1>
<p align="right"> <%
                String name=(String)session.getAttribute("use"); 
    if ((session.getAttribute("userid")== null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Try our amazing recipes</br> <%=session.getAttribute("userid")%>></br>
<a href='logout.jsp'>Log out</a>
<%
    }
%></p >
</div>
       
        <div align="center">
            <table><tr><h1 align="left" style="margin-left:180px;margin-bottom: 0px ">Eggplant in </br>
Cashew Coconut Curry </h1></tr><tr><td><img class="Pd" src="mush.jpg"></td><td style="font-size:20px ">Try the amazing Eggplant in
    </br>Cashew Coconut Curry</br><h2>Order Now</br></h2></br><form action="store.jsp" method="post"><input type="text" name="cd1"></br><input type="submit" style="background-color:#43a047" value="Add To Cart" name="cart">
    </form>  Serving 2 Persons:199/-(code:eccc1)</br>   Serving 4 Persons:349/-(code:eccc2)</br><p style="font-size: 20px">Cooking Time:35 mins</p></br><p style="font-size: 20px;margin-top: 0px">Difficulty:Easy</p></br><h3>Instructions Sheet will be send to you with the package</h3></td></tr></table>
        </div><hr size="1">
        <div class="Row"><div class="Column"><h2 style="margin-left:250px;margin-bottom: 0px">WHAT WE SEND</h2></br><p style="margin-left:250px;margin-top:0px;font-size: 20px ">Cashew</br>Onion</br>Garlic</br>Garlic</br>Green Chilli</br>Ginger</br>Egg Plant</br>Plantains</br>Tomato</br>Coconut Milk</br>Stock Cube</br>Basil Leaves</p></div><div class="Column"><h2 style="margin-left: 130px">WHAT YOU'LL NEED</h2></br><p style="margin-left:130px;margin-top:0px;font-size: 20px "> Salt
                    </br>
Pan </br></p></div></div>
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
