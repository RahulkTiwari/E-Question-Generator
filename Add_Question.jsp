<%-- 
    Document   : Add_Question
    Created on : 30 Mar, 2018, 12:46:32 PM
    Author     : Sonu
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="rahul.Connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
         int i=16;
        %>
        <%
            if(Connect.database()!=null)
            { 
               String id=Integer.toString(i);
               String ans=request.getParameter("ans");
               String q1=request.getParameter("q1");
               String op1=request.getParameter("op1");
               String op2=request.getParameter("op2");
               String op3=request.getParameter("op3");
               String op4=request.getParameter("op4");
               
              String sql="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS)VALUES(?,?,?,?,?,?,?)";
              PreparedStatement stmt=Connect.database().prepareStatement(sql);
                stmt.setString(1,q1);
                stmt.setString(2,op1);
                stmt.setString(3,op2);
                stmt.setString(4,op3);
                stmt.setString(5,op4);
                stmt.setString(6,id);
                stmt.setString(7,ans);
                stmt.executeUpdate();
                i++;
               
        %>
        <jsp:forward page="Admin_set1.jsp"></jsp:forward>
        
        <%
                 
            }
            else
            {
                out.println("Connection NOt Established");
            }
        %>
    </body>
</html>
