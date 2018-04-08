<%-- 
    Document   : Admin_Registration
    Created on : 29 Mar, 2018, 8:27:01 PM
    Author     : Sonu
--%>

<%@page import="java.sql.Statement"%>
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
                          
            String sql1="INSERT INTO ADMIN(USERNAME,PSWD1) VALUES('Rahulbhai','kkrt')";
            String sql2="INSERT INTO ADMIN(USERNAME,PSWD1) VALUES('Rahul','kkrt')";
            Statement stmt=Connect.database().createStatement();
                int count=stmt.executeUpdate(sql1);
                stmt.executeUpdate(sql2);
            }
            else
            {
               out.println("Connection Not established");     
            }
        %>
    </body>
</html>
