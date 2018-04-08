<%-- 
    Document   : Login
    Created on : 19 Mar, 2018, 11:00:33 PM
    Author     : Sonu
--%>

<%@page import="java.sql.ResultSet"%>
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
            String email_id=request.getParameter("emailId");
            String password=request.getParameter("pass");
            
                String sql="SELECT EMAIL_ID FROM REGISTRATIONPAGE WHERE EMAIL_ID=? AND PSWD2=?";
                PreparedStatement stmt=Connect.database().prepareStatement(sql);
                stmt.setString(1,email_id);
                stmt.setString(2,password);
                ResultSet result=stmt.executeQuery();
                  if(result.next())
                  {
                  session.setAttribute("emailid",email_id);  
        %>
            <jsp:forward page="112.jsp"></jsp:forward>
            <%    
                  }
                  else
                  {
                      out.println("<font color='red' size=4>"+"UnAuthorized User : "+"<a href='index.html'>Click Here To Login Again</a>");
                  }
             
            %>
    </body>
</html>
