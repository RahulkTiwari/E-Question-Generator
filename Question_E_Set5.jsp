<%-- 
    Document   : Question_E_Set5
    Created on : 29 Mar, 2018, 10:59:17 AM
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
                
            String sql51="INSERT INTO SET5(Q5,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('Choose the word which best expresses the meaning of the given word : CORPULENT',' Lean','Gaunt','Emaciated','Obese','1','Obese')";
            String sql52="INSERT INTO SET5(Q5,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('Choose the word which best expresses the meaning of the given word : BRIEF','Limited','Small','Little','Short','2','Short')";
            String sql53="INSERT INTO SET5(Q5,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('Choose the word which best expresses the meaning of the given word : EMBEZZLE','Misappropriate','Balance',' Remunerate','Clear','3','Misappropriate')";
            String sql54="INSERT INTO SET5(Q5,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('Spot the Error :The population of Tokyo is greater than that of any other town in the world.','greatest among any other','greater than all other','greater than those of any other','greater than any other','4','greater than any other')";
            String sql55="INSERT INTO SET5(Q5,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('Spot the Error :The performance of our players was rather worst than I had expected.','bad as I had expected','worse than I had expected','worse than expectation','worst than was expected','5','worse than I had expected')";
            String sql56="INSERT INTO SET5(Q5,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('Spot the Error : Why did you not threw the bag away?','did you not throw','had you not threw','did you not thrown','No correction required','6','did you not throw')";
            String sql57="INSERT INTO SET5(Q5,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('In the questions below the sentences have been given in Active/Passive voice. From the given alternatives, choose the one which best expresses the given sentence in Passive/Active voice : A child could not have done this mischief.','This mischief could not be done by a child.','This mischief could not been done by a child.','This mischief could not have been done by a child.','This mischief a child could not have been done.','7','This mischief could not have been done by a child.')";
            String sql58="INSERT INTO SET5(Q5,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('In the questions below the sentences have been given in Active/Passive voice. From the given alternatives, choose the one which best expresses the given sentence in Passive/Active voice :You can play with these kittens quite safely.','These kittens can played with quite safely.','These kittens can play with you quite safely.','These kittens can be played with you quite safely.','These kittens can be played with quite safely.','8','These kittens can be played with quite safely.')";
            String sql59="INSERT INTO SET5(Q5,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('In the questions below the sentences have been given in Active/Passive voice. From the given alternatives, choose the one which best expresses the given sentence in Passive/Active voice :James Watt discovered the energy of steam','The energy of steam discovered James Watt.','The energy of steam was discovered by James Watt.','James Watt was discovered by the energy of steam.','James Watt had discovered energy by the steam.','9','The energy of steam was discovered by James Watt.')";
            String sql60="INSERT INTO SET5(Q5,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('In questions given below out of four alternatives, choose the one which can be substituted for the given word/sentence.:Extreme old age when a man behaves like a fool','Imbecility','Senility','Dotage','Superannuation','10','Dotage')";
            String sql61="INSERT INTO SET5(Q5,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('In questions given below out of four alternatives, choose the one which can be substituted for the given word/sentence.:That which cannot be corrected','Unintelligible','Indelible','Illegible','Incorrigible','11','Incorrigible')";
            String sql62="INSERT INTO SET5(Q5,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('In questions given below out of four alternatives, choose the one which can be substituted for the given word/sentence : The study of ancient societies','Anthropology','Archaeology','History','Ethnology','12','Archaeology')";
            String sql63="INSERT INTO SET5(Q5,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('In questions given below out of four alternatives, choose the one which can be substituted for the given word/sentence : A person of good understanding knowledge and reasoning power','Expert','Intellectual','Snob','Literate','13','Intellectual')";
            String sql64="INSERT INTO SET5(Q5,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('Select correct spelling:','Efficient','Treatmeant','Beterment','Employd','14','Efficient')";
            String sql65="INSERT INTO SET5(Q5,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('Select correct spelling:','Foreign','Foreign','Fariegn','Forein','15','Foreign')";
             Statement stmt=Connect.database().createStatement();
                int count=stmt.executeUpdate(sql51);
                stmt.executeUpdate(sql52);
                stmt.executeUpdate(sql53);
                stmt.executeUpdate(sql54);
                stmt.executeUpdate(sql55);
                stmt.executeUpdate(sql56);
                stmt.executeUpdate(sql57);
                stmt.executeUpdate(sql58); 
                stmt.executeUpdate(sql59);
                stmt.executeUpdate(sql60);
                stmt.executeUpdate(sql61);
                stmt.executeUpdate(sql62);
                stmt.executeUpdate(sql63);
                stmt.executeUpdate(sql64);
                stmt.executeUpdate(sql65);
                out.println("inserted");
                
            }
            

        %>
            

        %>
    </body>
</html>
