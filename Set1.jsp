<!DOCTYPE html>

<html>
<head>
<title>E-Question Generator</title>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

<style>
.btr{
    margin: 4px 2px;
    opacity: 0.6;
    transition: 0.3s;
    display: inline-block;
    text-decoration: none;
    cursor: pointer;
    border-radius: 7px;
    align-content: right;
    width: auto;
    padding: 10px 18px;
    background-color: #ADFF2F;
    border:none;
    color:#0C0434;
}
.btr:hover {opacity: 1}
a:hover{
text-decoration:none;
color:#A5D4EF;
}
button:hover {
    background-color:#ADFF2F;
}
.mwe{

width: 100px;
    padding: 10px 18px;
    background-color:#006400;
    border:none;
    color: white;

}
</style>


<body id="top">
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="clear">
    <!-- ################################################################################################ -->
    <a href="Logout.jsp"><button class="btr" type="submit">Logout</button></a>
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="#" ><font size="7">E-Question Generator</font></a></h1>
      
    </div>
    
    <!-- ################################################################################################ --> 
  </header>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <div class="rounded">
    <nav id="mainav" class="clear"> 
      <!-- ################################################################################################ -->
       
        <%
            String eeid=(String)session.getAttribute("emailid");
        %>
        Welcome: <%=eeid%>
                      
      
      <!-- ################################################################################################ --> 
    </nav>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <!-- ################################################################################################ -->
      
<p><b><font color="brown" size=7px face="Times New Roman">Instructions:</font></b></p><br>
<p><b><font color="brown" size=5px face="Times New Roman">Number of Questions : 07</font></b></p><br>
<p><b><font color="brown" size=5px face="Times New Roman">Marks for per Question : 05</font></b></p><br>
<p><b><font color="brown" size=5px face="Times New Roman">Total Marks : 35</font></b></p><br>
<p><b><font color="brown" size=5px face="Times New Roman">Time to solve all Questions : 15 Minutes</font></b></p><br> 
<p><b><font color="brown" size=5px face="Times New Roman">DO NOT <u>refresh </u>the page</font></b></p><br>
<p><b><font color="brown" size=5px face="Times New Roman">BEST OF LUCK.....</font></b></p><br>
<a href="Welcome5.jsp"><button class="mwe" type="submit">Start</button></a>



      <!-- ################################################################################################ --> 
      <!-- ################################################################################################ -->
      
      <!-- ################################################################################################ --> 
      <!-- / main body -->
      <div class="clear"></div>
    </main>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row4">
  <div class="rounded">
    <footer id="footer" class="clear"> 
      <!-- ################################################################################################ -->
      <div class="one_third first">
        <figure class="center"><img class="btmspace-15" src="worldmap.png" alt="">
          <figcaption><a href="#">Find Us With Google Maps &raquo;</a></figcaption>
        </figure>
      </div>
      <div class="one_third">
        <address>
        Develoved By :<br>
        Rahul Tiwari<br>
        Shubham Wani<br>
        Mayur Yadav<br>
        <br>
        <i class="fa fa-phone pright-10"></i>091-9594816291<br>
        <i class="fa fa-envelope-o pright-10"></i> <a href="https://www.gmail.com">yadavmayur770@gmail.com</a>
        </address>
      </div>
      <div class="one_third">
        <p class="nospace btmspace-10">Stay Up to Date With What's Happening</p>
        <ul class="faico clear">
          <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
          <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a class="faicon-flickr" href="#"><i class="fa fa-flickr"></i></a></li>
          <li><a class="faicon-rss" href="#"><i class="fa fa-rss"></i></a></li>
        </ul>
        <form class="clear" method="post" action="#">
          <fieldset>
            <legend>Subscribe To Our Newsletter:</legend>
            <input type="text" value="" placeholder="Enter Email Here&hellip;">
            <button class="fa fa-sign-in" type="submit" title="Sign Up"><em>Sign Up</em></button>
          </fieldset>
        </form>
      </div>
      <!-- ################################################################################################ --> 
    </footer>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">VCET</a></p>
    
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- JAVASCRIPTS --> 
<script src="../layout/scripts/jquery.min.js"></script> 
<script src="../layout/scripts/jquery.fitvids.min.js"></script> 
<script src="../layout/scripts/jquery.mobilemenu.js"></script> 
<script src="../layout/scripts/nivo-lightbox/nivo-lightbox.min.js"></script>
</body>
</html>

