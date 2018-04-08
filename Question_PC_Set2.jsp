<%-- 
    Document   : Set2
    Created on : 24 Mar, 2018, 8:23:01 PM
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
            String sql11="INSERT INTO SET2(Q2,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('Out of 7 consonants and 4 vowels, how many words of 3 consonants and 2 vowels can be formed?','24400','21300','2100','25200','1','25200')";
            String sql12="INSERT INTO SET2(Q2,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('In how many different ways can the letters of the word OPTICAL be arranged so that the vowels always come together?','610','720','825','920','2','720')";
            String sql13="INSERT INTO SET2(Q2,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('In how many ways can a group of 5 men and 2 women be made out of a total of 7 men and 3 women?','1','126','63','64','3','63')";
            String sql14="INSERT INTO SET2(Q2,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('How many 3-letter words with or without meaning, can be formed out of the letters of the word, LOGARITHMS, if repetition of letters is not allowed?','720','420','None of these','720','4','720')";
            String sql15="INSERT INTO SET2(Q2,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES(' A coin is tossed 3 times. Find out the number of possible outcomes.','None of these','8','2','1','5','8')";
            String sql16="INSERT INTO SET2(Q2,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('A bag contains 2 white balls, 3 black balls and 4 red balls. In how many ways can 3 balls be drawn from the bag, if at least one black ball is to be included in the draw?','64','128','32','None of these ','6','64')";
            String sql17="INSERT INTO SET2(Q2,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('In how many different ways can the letters of the word JUDGE be arranged such that the vowels always come together?','48','45','32','64','7','48')";
            String sql18="INSERT INTO SET2(Q2,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('In how many ways can the letters of the word LEADER be arranged?','361','362','363','364','8','360')";
            String sql19="INSERT INTO SET2(Q2,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('There are 10 women and 15 men in an office. In how many ways can a person can be selected?','50','25','150','200','9','25')";
            String sql20="INSERT INTO SET2(Q2,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('In how many ways can three boys can be seated on five chairs?','30','80','60','120','10','60')";
            String sql21="INSERT INTO SET2(Q2,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('There are 6 persons in an office. A group consisting of 3 persons has to be formed. In how many ways can the group be formed?','30','10','40','20','11','20')";
            String sql22="INSERT INTO SET2(Q2,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('In how many ways can 7 boys be seated in a circular order?','60','120','5040','720','12','720')";
            String sql23="INSERT INTO SET2(Q2,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('In how many ways can 11 persons be arranged in a row such that 3 particular persons should always be together?','9!×3!','11!','11!×3!','9!','13','9!×3!')";
            String sql24="INSERT INTO SET2(Q2,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('How many signals can be made using 6 different coloured flags when any number of them can be hoisted at a time?','1956','1720','2020','1822','14','1956')";
            String sql25="INSERT INTO SET2(Q2,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('If there are 9 horizontal lines and 9 vertical lines in a chess board, how many rectangles can be formed in the chess board?','920','1024','64','1296','15','1296')";
            Statement stmt=Connect.database().createStatement();
                int count=stmt.executeUpdate(sql11);
                stmt.executeUpdate(sql12);
                stmt.executeUpdate(sql13);
                stmt.executeUpdate(sql14);
                stmt.executeUpdate(sql15);
                stmt.executeUpdate(sql16);
                stmt.executeUpdate(sql17);
                stmt.executeUpdate(sql18); 
                stmt.executeUpdate(sql19);
                stmt.executeUpdate(sql20);
                stmt.executeUpdate(sql21);
                stmt.executeUpdate(sql22);
                stmt.executeUpdate(sql23);
                stmt.executeUpdate(sql24);
                stmt.executeUpdate(sql25);
                out.println("inserted");
            
            }
        %>
    </body>
</html>
