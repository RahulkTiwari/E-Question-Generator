<%-- 
    Document   : Registration_DataBase
    Created on : 19 Mar, 2018, 9:01:32 PM
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
        <%
            if(Connect.database()!=null)
            {
                String email_id=request.getParameter("email");
                String password1=request.getParameter("password1");
                String password2=request.getParameter("password2");
                
               if(email_id.equals("")||password1.equals("")||password2.equals(""))
               {
                   out.println("Enter All Fileds....");
               }
               else
               {
                String sql="INSERT INTO REGISTRATIONPAGE(EMAIL_ID,PSWD1,PSWD2)VALUES(?,?,?)";
                PreparedStatement stmt=Connect.database().prepareStatement(sql);
                stmt.setString(1,email_id);
                stmt.setString(2,password1);
                stmt.setString(3,password2);
                stmt.executeUpdate();
               
        %>
               <font face="Times New Roman" color="Brown" size=5>
               <%="Account created successfully: "%>
               </font>
                <a href="index.html">Click here to Login!!!!</a>
               <%
               }
            }
               %> 
    </body>
</html>
