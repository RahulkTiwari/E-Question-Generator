package rahul;


import java.sql.Connection;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Sonu
 */

public class Connect {
   
    public static void main(String args[])
    {
    database();
    }
    
    public static Connection database()
    {
         String driver="org.apache.derby.jdbc.ClientDriver";
                String url="jdbc:derby://localhost:1527/QuestionGenerator";
                String uname="Rahul";
                String pasword="Rahul";  
                  Connection con=null;
                try
                {
                  Class.forName(driver);
                  con=DriverManager.getConnection(url,uname,pasword);
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
                      
            return con;
    }
    
    
}


