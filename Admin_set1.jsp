<%-- 
    Document   : Question_full_data
    Created on : 29 Mar, 2018, 8:50:52 PM
    Author     : Sonu
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="rahul.Connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <style>
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
</style>   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body  bgcolor="#0C0434">
<div class="mae">
    <h1><font face="Times New Roman"><font size="16px">E</font>-<font size="16px">Q</font>UESTION <font size="16px">G</font>ENERATOR</font>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Logout.jsp"><button class="btr" type="submit">Logout</button></a></h1>
</div> 
    <div class="mayur">
        <% String uname=(String)session.getAttribute("uname");%>
     <font face="4"><b>Welcome Admin: <%=uname%></b></font>
</div>
    <br>
    <div class="mar"><br>
        <%
           
            int i=1;
            if(Connect.database()!=null)
            {
               try
               {
                   String data1="SELECT * FROM SET1";
                   PreparedStatement stmt=Connect.database().prepareStatement(data1);
                   ResultSet resultdata1=stmt.executeQuery();
                   while(resultdata1.next())
                   {
                       out.println(i+". ");
                       out.println(resultdata1.getString(1));  
                       i++;
                               
        %>
        <br><Br>
        <%
                       out.println(resultdata1.getString(2));
        %>
        <br><br>
         <%
                       out.println(resultdata1.getString(3));
        %>
        <br><br>
         <%
                       out.println(resultdata1.getString(4));
        %>
        <br><br>
         <%
                       out.println(resultdata1.getString(5));
        %>
        <br><br>
        <%
                   }
               }
               catch(Exception e)
               {
                   e.printStackTrace();
               }
            }
            else
            {
                out.println("Connection Not established");
            }
        %>
        <form action="Add_Question.jsp" method="Post">
        Add New Question :<input type="text" name="q1"><br><br>
        Option1:<input type="text" name="op1"/><br><br>
        Option2:<input type="text" name="op2"/><br><br>
        Option3:<input type="text" name="op3"/><br><br>
        Option4:<input type="text" name="op4"/><br><br>
        Ans:<input type="text" name="ans"/><br><br>
        <input type="Submit" value="ADD">
        </form><br>  
        </div> 
    </body>
</html>
