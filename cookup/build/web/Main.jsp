<%-- 
    Document   : Main
    Created on : May 1, 2015, 9:50:26 AM
    Author     : VishnuVarmaRamineni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            function menu()
            {
                window.location='index.jsp';
            }
            function menu1()
            {
                window.location='reg.jsp';
            }
            </script>
        <style>
            #header {
    background-color:#F44336;
    color:white;
    text-align:center;
    padding:5px;
}
#nav {
    line-height:30px;
    background-color:#eeeeee;
    height:300px;
    width:100px;
    float:left;
    padding:5px;	      
}
#section {
    width:350px;
    float:left;
    padding:10px;	 	 
}
#footer {
    background-color:#212121;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}
           .myButton{
  color: #FFF;
  background-color:#8BC34A;
  font-size: 30px;
  color: black;
  font-weight: bold;
}
  .myButton1{
  color: #FFF;
  background-color:aqua;
  font-size: 30px;
  color: black;
  font-weight: bold;}
.background {
    background-image:url('f1.jpg');
    position: relative;
     table-layout: fixed; /*Optional*/
    border-spacing: 100px;
}

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
#imga {
    opacity: 0.8;
    filter: alpha(opacity=40);
    color:black;/* For IE8 and earlier */
}
.home-overlay {
    background-color: rgba(44, 62, 80, 0.3);
    background-image: url("pattern.png");
    background-repeat: repeat;
    height: 100%;
    left: 0;
    position: absolute;
    top: 0;
    width: 100%;
    z-index: 0;
}
   </style>
        <title>Chef</title>
    </head>
    <body>
         <div id="header">
<h1 style="font-size:40px">CookUp</h1>
</div>
        <section>
        <div>
        
<div class="background" style="padding: 10cm">
    <div class="home-overlay" ><div align="center" class="row">
            <div class="Column">
            <h1  style="color:#F5F5F5;font-size: 40px;font-family: "Arial Black", Gadget, sans-serif;">The simplest way to cook</h1>
        <h1  style="color:#F5F5F5;font-size: 40px;">world recipes like a chef, at home.</h1>
        <p style="color:#F5F5F5;font-size:25px;font-style:bold;">Recipe box containing exact ingredients </p><p style="color:#F5F5F5;font-size:25px;font-style:bold;font-family:LucidaConsole ">and instruction sheet delivered to your doorsteps.</p></div>
            <input type="button" class="myButton" onclick="menu();" id="a" value="Login"> <input type="button" class="myButton1" onclick="menu1();" id="a" value="Register">
        </div>

</div></div>
    
      </div>
        </section>
<div id="footer">
    <div class="Row">
        <div class="Column"><h>NO SHOPPING.</h></br>
            <h>NO MEASURING</h></br><p>Why shop and think about the measurement of </br>ingredients in your recipes when you can get</br> everything fresh ready to cook.</p></div>
        <div class="Column"><h>SAVE MONEY.</h></br> 
            <h>PAY FOR ONLY WHAT YOU NEED</h></br><p>Pay for exact amount of ingredients required for </br>your recipes. Save yourself from buying excess </br>ingredients.</p></div>
        <div class="Column"><h>COOK AT HOME.</h></br>
            <h>SPREAD LOVE</h></br><p>We believe health starts with a home-cooked meal. </br>We allow you to cook interesting new recipes at </br>home to surprise your loved ones.</p></div>
</div>

© CookUp.com
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
