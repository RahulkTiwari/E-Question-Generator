<%-- 
    Document   : Welcome
    Created on : 20 Mar, 2018, 12:31:13 AM
    Author     : Sonu
--%>

<%@page import="rahul.Randoom"%>
<%@page import="rahul.Randum"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="rahul.Connect"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <style>

     .lq{
         border-radius:12px;
         width: auto;
    padding: 10px 18px;
    background-color: #2AF116;
    border:none;
    color:brown;       
            }            
.mayur{
position:relative;
background-color:white;
width:59.2%;
height:20px;
border-radius:12px;
left:250px;
margin:5px;
padding: 10px;
text-align: left;


}
.mar{
position:relative;
background-color:white;
width:60%;
height:35px;
border-radius:12px;
left:250px;
height:auto;
margin:5px;
padding:5px;

}
.mae{
position:relative;
left:250px;
font-size:17px;
font-family:Georgia;
font-face:Times New Roman;
color:white;
}
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
    background-color:#ADFF2F;
    border:none;
    color:black;
}
.btr:hover {opacity: 1}
</style>
<script type="text/javascript">
    // set minutes
    var mins = 15;
     
    // calculate the seconds (don't change this! unless time progresses at a different speed for you...)
    var secs = mins * 60;
    function countdown() {
    	setTimeout('Decrement()',1000);
    }
    function Decrement() {
    	if (document.getElementById) {
    		minutes = document.getElementById("minutes");
    		seconds = document.getElementById("seconds");
    		// if less than a minute remaining
    		if (seconds < 59) {
    			seconds.value = secs;
    		} else {
    			minutes.value = getminutes();
    			seconds.value = getseconds();
    		}
    		secs--;
    		setTimeout('Decrement()',1000);
    	}
    }
    function getminutes() {
    	// minutes is seconds divided by 60, rounded down
    	mins = Math.floor(secs / 60);
    	return mins;
    }
    function getseconds() {
    	// take mins remaining (as seconds) away from total seconds remaining
    	return secs-Math.round(mins *60);
    }
    function setTimeForSubmit(){
        setTimeout(function(){ alert("5 Minute left!! Do your best"); }, 300000);
        window.setTimeout("submitForm()",900000);//Expire after 20 Sec
    }
    function submitForm() {
        alert("Time Over.....");
        document.questionGenerator.submit();
    }
    </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <%
            String eeid=(String)session.getAttribute("emailid");
            String a,b,c,d,e,f,g;
            int z[]=new int[7];
            z=Randum.generator();
            a=Integer.toString(z[0]);
            b=Integer.toString(z[1]);
            c=Integer.toString(z[2]);
            d=Integer.toString(z[3]);
            e=Integer.toString(z[4]);
            f=Integer.toString(z[5]);
            g=Integer.toString(z[6]);
            
            
            if(Connect.database()!=null)
            {
                String sql1="SELECT * FROM SET3 WHERE ID=?";
                PreparedStatement stmt1=Connect.database().prepareStatement(sql1);
                stmt1.setString(1,a);
                ResultSet result21=stmt1.executeQuery();
                
                String sql2="SELECT * FROM SET3 WHERE ID=?";
                PreparedStatement stmt2=Connect.database().prepareStatement(sql2);
                stmt2.setString(1,b);
                ResultSet result22=stmt2.executeQuery();
                
                String sql3="SELECT * FROM SET3 WHERE ID=?";
                PreparedStatement stmt3=Connect.database().prepareStatement(sql3);
                stmt3.setString(1,c);
                ResultSet result23=stmt3.executeQuery();
                
                String sql4="SELECT * FROM SET3 WHERE ID=?";
                PreparedStatement stmt4=Connect.database().prepareStatement(sql4);
                stmt4.setString(1,d);
                ResultSet result24=stmt4.executeQuery();
                
                String sql5="SELECT * FROM SET3 WHERE ID=?";
                PreparedStatement stmt5=Connect.database().prepareStatement(sql5);
                stmt5.setString(1,e);
                ResultSet result25=stmt5.executeQuery();
                
                String sql6="SELECT * FROM SET3 WHERE ID=?";
                PreparedStatement stmt6=Connect.database().prepareStatement(sql6);
                stmt6.setString(1,f);
                ResultSet result26=stmt6.executeQuery();
                
                String sql7="SELECT * FROM SET3 WHERE ID=?";
                PreparedStatement stmt7=Connect.database().prepareStatement(sql7);
                stmt7.setString(1,g);
                ResultSet result27=stmt7.executeQuery();
        %>
        <body bgcolor="#0C0434">
    <div class="mae">
    <h1><font face="Times New Roman"><font size="16px">E</font>-<font size="16px">Q</font>UESTION <font size="16px">G</font>ENERATOR</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Logout.jsp"><button class="btr" type="submit">Logout</button></a></h1>
</div> 
    <div class="mayur">
     <font size="3"><b> Welcome : <%=eeid%></b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                        Time Remaining <input id="minutes" type="text" style="width: 20px; border: none; background-color:none; font-size: 16px; font-weight: bold;">:<input id="seconds" type="text" style="width:23px; border: none; background-color:none; font-size: 16px; font-weight: bold;">
</div>
    <script>
    countdown();
    </script>
    <br>
    <div class="mar">
        <form action="Submit3.jsp" method="POST" name="questionGenerator">
            <br>
        <%
                while(result21.next())
                {
        %>
        
            1. <%=result21.getString(1)%><br><br>
            <input type="radio" name="a1" value='<%=result21.getString(2)%>'><%=result21.getString(2)%><br><br>
            <input type="radio" name="a1" value='<%=result21.getString(3)%>'><%=result21.getString(3)%><br><br>
            <input type="radio" name="a1" value='<%=result21.getString(4)%>'><%=result21.getString(4)%><br><br>
            <input type="radio" name="a1" value='<%=result21.getString(5)%>'><%=result21.getString(5)%><br><br>
            <input type="hidden" name="h1" value='<%=result21.getString(6)%>'>
            
        <%
                }
                while(result22.next())
                {
        %>
            2. <%=result22.getString(1)%><br><br>
            <input type="radio" name="a2" value='<%=result22.getString(2)%>'><%=result22.getString(2)%><br><br>
            <input type="radio" name="a2" value='<%=result22.getString(3)%>'><%=result22.getString(3)%><br><br>
            <input type="radio" name="a2" value='<%=result22.getString(4)%>'><%=result22.getString(4)%><br><br>
            <input type="radio" name="a2" value='<%=result22.getString(5)%>'><%=result22.getString(5)%><br><br>
            <input type="hidden" name="h2" value='<%=result22.getString(6)%>'>
        <%        
                }
                while(result23.next())    
                {
        %>
           3. <%=result23.getString(1)%><br><br>
            <input type="radio" name="a3" value='<%=result23.getString(2)%>'><%=result23.getString(2)%><br><br>
            <input type="radio" name="a3" value='<%=result23.getString(3)%>'><%=result23.getString(3)%><br><br>
            <input type="radio" name="a3" value='<%=result23.getString(4)%>'><%=result23.getString(4)%><br><br>
            <input type="radio" name="a3" value='<%=result23.getString(5)%>'><%=result23.getString(5)%><br><br>
            <input type="hidden" name="h3" value='<%=result23.getString(6)%>'>
        <%
                }
                while(result24.next())
                {
        %>    
            4. <%=result24.getString(1)%><br><br>
            <input type="radio" name="a4" value='<%=result24.getString(2)%>'><%=result24.getString(2)%><br><br>
            <input type="radio" name="a4" value='<%=result24.getString(3)%>'><%=result24.getString(3)%><br><br>
            <input type="radio" name="a4" value='<%=result24.getString(4)%>'><%=result24.getString(4)%><br><br>
            <input type="radio" name="a4" value='<%=result24.getString(5)%>'><%=result24.getString(5)%><br><br>
            <input type="hidden" name="h4" value='<%=result24.getString(6)%>'>
        <%
                }
                while(result25.next())
                {
        %>   
        5. <%=result25.getString(1)%><br><br>
            <input type="radio" name="a5" value='<%=result25.getString(2)%>'><%=result25.getString(2)%><br><br>
            <input type="radio" name="a5" value='<%=result25.getString(3)%>'><%=result25.getString(3)%><br><br>
            <input type="radio" name="a5" value='<%=result25.getString(4)%>'><%=result25.getString(4)%><br><br>
            <input type="radio" name="a5" value='<%=result25.getString(5)%>'><%=result25.getString(5)%><br><br>
            <input type="hidden" name="h5" value='<%=result25.getString(6)%>'>
        
        <%
                }
                while(result26.next())
                {
        %>    
        6. <%=result26.getString(1)%><br><br>
            <input type="radio" name="a6" value='<%=result26.getString(2)%>'><%=result26.getString(2)%><br><br>
            <input type="radio" name="a6" value='<%=result26.getString(3)%>'><%=result26.getString(3)%><br><br>
            <input type="radio" name="a6" value='<%=result26.getString(4)%>'><%=result26.getString(4)%><br><br>
            <input type="radio" name="a6" value='<%=result26.getString(5)%>'><%=result26.getString(5)%><br><br>
            <input type="hidden" name="h6" value='<%=result26.getString(6)%>'>
        <%
                }
                while(result27.next())
                {
        %>    
        7. <%=result27.getString(1)%><br><br>
            <input type="radio" name="a7" value='<%=result27.getString(2)%>'><%=result27.getString(2)%><br><br>
            <input type="radio" name="a7" value='<%=result27.getString(3)%>'><%=result27.getString(3)%><br><br>
            <input type="radio" name="a7" value='<%=result27.getString(4)%>'><%=result27.getString(4)%><br><br>
            <input type="radio" name="a7" value='<%=result27.getString(5)%>'><%=result27.getString(5)%><br><br>
            <input type="hidden" name="h7" value='<%=result27.getString(6)%>'>
        <%
                }
            }
        %>
        <input type="submit" class="lq" value="Submit">
        </form>
         </div>
    </body>
</html>
