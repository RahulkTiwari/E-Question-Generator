<%-- 
    Document   : demo
    Created on : 24 Mar, 2018, 2:51:46 PM
    Author     : Sonu
--%>

<%@page import="java.sql.Statement"%>
<%@page import="rahul.Connect"%>
<%@page import="rahul.Randum"%>
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
                String sql1="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('Which of the following is a prime number ?','9','8','4','2','1','2')";
                String sql2="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('121 × 5^4 = ?','68225','75625','72325','71225','2','75625')";
                String sql3="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('(64 - 12)^2 + 4 × 64 × 12 = ?','5246','4406','5126','5776','3','5776')";
                String sql4="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('What is the largest 4 digit number exactly divisible by 88?','9944','9999','9988','9900','4','9944')";
                String sql5="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('{(481 + 426)^2 - 4 × 481 × 426} = ?','3025','4200','3060','3210','5','3025')";
                String sql6="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES(' If (2^32 + 1) is completely divisible by a whole number, which of the following numbers is completely divisible by this number?','(2^96 + 1)','(7 × 2^23 )','(2^16 - 1)','(2^16 + 1)','6','(2^96 + 1)')";
                String sql7="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('How many of the following numbers are divisible by 132? 264, 396, 462, 792, 968, 2178, 5184, 6336','4','3','6','8','7','4')";
                String sql8="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('What is the unit digit in (6324)^1797×(615)^316×(341)^476 ?','1','2','4','0','8','0')";
                String sql9="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('How many terms are in the G.P. 3, 6, 12, 24, ......., 384 ?','8','9','10','11','9','8')";
                String sql10="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('The sum of the two numbers is 12 and their product is 35.What is the sum of the reciprocals of these numbers?','12/35','1/35','35/8','7/32','10','12/35')";
                String sql11="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('On dividing 2272 as well as 875 by 3-digit number N,we get the same remainder.The sum of the digits of N is:','13','12','11','10','11','10')";
                String sql12="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('What is the greatest of 3 consecutive integers whose sum is 24 ?','6','7','8','9','12','9')";
                String sql13="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('If 60% of 35 of a number is 36, then the number is','86','94','100','115','13','100')";
                String sql14="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('Insert the missing number. 2, 7, 10, 22, 18, 37, 26','42','52','46','62','14','52')";
                String sql15="INSERT INTO SET1(Q1,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('2, 3, 6, 0, 10, -3, 14, (...)','6','2','-6','-2','15','-6')";
                Statement stmt=Connect.database().createStatement();
                int count=stmt.executeUpdate(sql1);
                stmt.executeUpdate(sql2);
                stmt.executeUpdate(sql3);
                stmt.executeUpdate(sql4);
                stmt.executeUpdate(sql5);
                stmt.executeUpdate(sql6);
                stmt.executeUpdate(sql7);
                stmt.executeUpdate(sql8); 
                stmt.executeUpdate(sql9);
                stmt.executeUpdate(sql10);
                stmt.executeUpdate(sql11);
                stmt.executeUpdate(sql12);
                stmt.executeUpdate(sql13);
                stmt.executeUpdate(sql14);
                stmt.executeUpdate(sql15);
                out.println("inserted");
                
            }
            

        %>
    </body>
</html>
