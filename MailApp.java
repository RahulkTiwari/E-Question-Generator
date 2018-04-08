package rahul;
import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.annotation.WebServlet;
import rahul.SendMail;

@WebServlet(name = "MailApp", urlPatterns = {"/mail"})
public class MailApp extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String subject="Password";
        String user="";
        String pass="";
        String message="null";
        String to = request.getParameter("to");
     
                if(Connect.database()!=null)
                {
                    try
                    {
                String sql="SELECT * FROM REGISTRATIONPAGE WHERE EMAIL_ID=?";
                PreparedStatement stmt=Connect.database().prepareStatement(sql);
                stmt.setString(1,to);
                ResultSet result=stmt.executeQuery();
                while(result.next())
                   {
                       message=result.getString(3);
                   }
                   
        SendMail.send(to,subject, message, user, pass);
        out.println("Mail send successfully");
                    }
                    catch(Exception e)
                    {
                        e.printStackTrace();
                    }
    }
                else{
                    out.println("Mail Not Sent!!");
                }
}
}

