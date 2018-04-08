<%-- 
    Document   : Admin_Login
    Created on : 29 Mar, 2018, 8:12:25 PM
    Author     : Sonu
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
            String username=request.getParameter("username");
            String pswd=request.getParameter("password");
            if(Connect.database()!=null)
            {
               String sql="SELECT * FROM ADMIN WHERE USERNAME=? AND PSWD1=?";
               PreparedStatement stmt=Connect.database().prepareStatement(sql);
               stmt.setString(1,username);
               stmt.setString(2,pswd);
               ResultSet result=stmt.executeQuery();
              if(result.next())
               {
                   
                session.setAttribute("uname",username);
        %>
         <jsp:forward page="Admin_set1.jsp"></jsp:forward>
        <%
               }
              else
                  {
                      out.println("<font color='red' size=4>"+"UnAuthorized User : "+"<a href='index.html'>Click Here To Login Again</a>");
                  }
            }
        %>
    </body>
</html>
