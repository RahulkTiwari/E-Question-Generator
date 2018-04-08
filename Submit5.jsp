<%-- 
    Document   : Submit
    Created on : 20 Mar, 2018, 9:32:09 PM
    Author     : Sonu
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="rahul.Connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <script>
function myFunction() {
    window.print();
}
</script>
<style>
    .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}
.button1:hover {
    background-color: #4CAF50;
    color: white;
}

.lq{
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
    background-color: #F54742;
    border:none;
    color: white;
}
.btr:hover {opacity: 1}        
        table, td, th {   
    background-color:#F5F5DC;
    color:#800000;
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 15px;
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <% 
            String eeid=(String)session.getAttribute("emailid");
            int score=0;
            int correct=0;
            int incorrect=0;
            String  s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
            String a1,a2,a3,a4,a5,a6,a7;
             if(request.getParameter("a1")!=null)
            {
              a1=request.getParameter("a1");  
            }
            else
            {
                a1= "Not Attempt";
            }
            
            if(request.getParameter("a2")!=null)
                
            {
              a2=request.getParameter("a2");  
            }
            else
            {
                a2= "Not Attempt";
            }
            
              if(request.getParameter("a3")!=null)
            {
              a3=request.getParameter("a3");  
            }
            else
            {
                a3="Not Attempt";
            }
            
                if(request.getParameter("a4")!=null)
            {
              a4=request.getParameter("a4");  
            }
            else
            {
                a4="Not Attempt";
            }
                
                  if(request.getParameter("a5")!=null)
            {
              a5=request.getParameter("a5");  
            }
            else
            {
                a5="Not Attempt";
            }
                  
                    if(request.getParameter("a6")!=null)
            {
              a6=request.getParameter("a6");  
            }
            else
            {
                a6="Not Attempt";
            }
                    
                      if(request.getParameter("a7")!=null)
            {
              a7=request.getParameter("a7");  
            }
            else
            {
                a7="Not Attempt";
            }
            String h1=request.getParameter("h1");
            String h2=request.getParameter("h2");
            String h3=request.getParameter("h3"); 
            String h4=request.getParameter("h4");
            String h5=request.getParameter("h5");
            String h6=request.getParameter("h6");
            String h7=request.getParameter("h7");
            
            if(Connect.database()!=null)
            {
                
              String sql1="SELECT * FROM SET5 WHERE ID=?";
            PreparedStatement stmt1=Connect.database().prepareStatement(sql1);
                stmt1.setString(1,h1);
                ResultSet result41=stmt1.executeQuery();
                
              String sql2="SELECT * FROM SET5 WHERE ID=?";
            PreparedStatement stmt2=Connect.database().prepareStatement(sql2);
                stmt2.setString(1,h2);
                ResultSet result42=stmt2.executeQuery();
                
                String sql3="SELECT * FROM SET5 WHERE ID=?";
            PreparedStatement stmt3=Connect.database().prepareStatement(sql3);
                stmt3.setString(1,h3);
                ResultSet result43=stmt3.executeQuery();
              
                
                String sql4="SELECT * FROM SET5 WHERE ID=?";
            PreparedStatement stmt4=Connect.database().prepareStatement(sql4);
                stmt4.setString(1,h4);
                ResultSet result44=stmt4.executeQuery();
                
                String sql5="SELECT * FROM SET5 WHERE ID=?";
            PreparedStatement stmt5=Connect.database().prepareStatement(sql5);
                stmt5.setString(1,h5);
                ResultSet result45=stmt5.executeQuery();
                
                String sql6="SELECT * FROM SET5 WHERE ID=?";
            PreparedStatement stmt6=Connect.database().prepareStatement(sql6);
                stmt6.setString(1,h6);
                ResultSet result46=stmt6.executeQuery();
                
                  String sql7="SELECT * FROM SET5 WHERE ID=?";
            PreparedStatement stmt7=Connect.database().prepareStatement(sql7);
                stmt7.setString(1,h7);
                ResultSet result47=stmt7.executeQuery();

                while(result41.next())
                {
                                s1=result41.getString(7);
                    if(a1.equals(s1))
                    {
                        score=score+5;
                        correct++;
                    }
                    else{incorrect++;}       
                }
                while(result42.next())
                {
                      s2=result42.getString(7);
                    if(a2.equals(s2))
                    {
                       score=score+5;
                        correct++;
                    }
                    else{incorrect++;}       
                }
                while(result43.next())
                {
                     s3=result43.getString(7);
                    if(a3.equals(s3))
                    {
                        score=score+5;
                        correct++;
                    }
                    else{incorrect++;}       
                }
                while(result44.next())
                {
                     s4=result44.getString(7);
                    if(a4.equals(s4))
                    {
                        score=score+5;
                        correct++;
                    }
                    else{incorrect++;}       
                }
                while(result45.next())
                {
                                s5=result45.getString(7);
                    if(a5.equals(s5))
                    {
                        score=score+5;
                        correct++;
                    }
                    else{incorrect++;}  
                }
                    while(result46.next())
                {
                                s6=result46.getString(7);
                    if(a6.equals(s6))
                    {
                        score=score+5;
                        correct++;
                    }
                    else{incorrect++;}  
                }
                    while(result47.next())
                {
                                s7=result47.getString(7);
                    if(a7.equals(s7))
                    {
                        score=score+5;
                        correct++;
                    }
                    else{incorrect++;}  
                    
                }
             
            }
            
        %>
<body  bgcolor="#0C0434">
<div class="mae">
    <h1><font face="Times New Roman"><font size="16px">E</font>-<font size="16px">Q</font>UESTION <font size="16px">G</font>ENERATOR</font>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Logout.jsp"><button class="btr" type="submit">Logout</button></a></h1>
</div> 
    <div class="mayur">
        Welcome : <%=eeid%>
</div>
    <br>
    <div class="mar">
        <table border="2">
            <tr>
            <th>Question No.</th>
            <th>Attempt Answer</th>
            <th>Correct Answer</th>
            </tr>
            <tr>
            <td>1</td>
            <td><% out.println(a1);%></td>
            <td><% out.println(s1);%></td>
            </tr>
            <tr>
            <td>2</td>
            <td><% out.println(a2);%></td>
            <td><% out.println(s2);%></td>
            </tr>
            <tr>
            <td>3</td>
            <td><% out.println(a3);%></td>
            <td><% out.println(s3);%></td>
            </tr>
            <tr>
            <td>4</td>
            <td><% out.println(a4);%></td>
            <td><% out.println(s4);%></td>
            </tr>
            <tr>
            <td>5</td>
            <td><% out.println(a5);%></td>
            <td><% out.println(s5);%></td>
            </tr>
            <tr>
            <td>6</td>
            <td><% out.println(a6);%></td>
            <td><% out.println(s6);%></td>
            </tr>
            <tr>
            <td>7</td>
            <td><% out.println(a7);%></td>
            <td><% out.println(s7);%></td>
            </tr>
            </table>
             <table>
                <tr>
                    <td><center><font size="5">Total Correct Answer:<% out.println(correct);%></font></center></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td><center><font size="5">Total InCorrect Answer:<% out.println(incorrect);%></font></center></td>
                </tr>
            </table>
                <table>
                <tr>
                    <td><center><font size="5">Marks Obtained:<%=score%>/35</center> </font></td>
                </tr>
            </table>
                   <table>
                <tr>
                    <td><center><button class="button button1" onclick="myFunction()">Print</button><center></td>
                </tr>
            </table>
    </div>    
    </body>
</html>
