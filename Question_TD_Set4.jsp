<%-- 
    Document   : Question_TD_Set4
    Created on : 26 Mar, 2018, 6:01:41 PM
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
             String sql41="INSERT INTO SET4(Q4,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('A man takes 5 hours 45 min in walking to a certain place and riding back. He would have gained 2 hours by riding both ways.','11 hrs','8 hrs 45 min','7 hrs 45 min','9 hrs 20 min','1','7 hrs 45 min')";
             String sql42="INSERT INTO SET4(Q4,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('A person crosses a 600 metre long street in 5 minutes. What is his speed in km per hour?','12 min','11 min','10 min','09 min','2','10 min')";
             String sql43="INSERT INTO SET4(Q4,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('A car traveling with 5/7 of its actual speed covers 42 km in 1 hr 40 min 48 sec. What is the actual speed of the car?','30 km/hr','35 km/hr','25 km/hr','40 km/hr','3','40 km/hr')";
             String sql44="INSERT INTO SET4(Q4,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('Two boys starts from the same place walking at the rate of 5 kmph and 5.5 kmph respectively in the same direction. What time will they take to be 8.5 km apart?','17 hr','14 hr','12 hr','19 hr','4','17 hr')";
             String sql45="INSERT INTO SET4(Q4,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('A car travels first 160 km at 64 km/hr and the next 160 km at 80 km/hr. What is the average speed for the first 320 km of the tour?','70.24 km/hr','71.11 km/hr','74.24 km/hr','71.21 km/hr','5','71.21  km/hr')";
             String sql46="INSERT INTO SET4(Q4,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('Walking 6/7th of his usual speed, a man is 12 minutes too late. What is the usual time taken by him to cover that distance?','1 hr 42 min','1 hr','2 hr','1 hr 12 min','6','1 hr 12 min')";
             String sql47="INSERT INTO SET4(Q4,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('An aeroplane covers a certain distance at a speed of 240 kmph in 5 hours. To cover the same distance in 1 2/3 hours, it must travel at a speed of:','660 km/hr',' 720 km/hr',' 700 km/hr',' 680 km/hr','7',' 720 km/hr')";
             String sql48="INSERT INTO SET4(Q4,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('The ratio between the speeds of two trains is 7:8. If the second train runs 400 km in 4hours, What is the speed of the first train?','85 km/hr','87.5 km/hr','90 km/hr','92.5 km/hr','8','87.5 km/hr')";
             String sql49="INSERT INTO SET4(Q4,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('A person crosses a 600 m long street in 5 minutes. What is his speed in km per hour?','3.6','7.2','8.4','10','9','7.2')";
             String sql50="INSERT INTO SET4(Q4,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('If a person walks at 14 km/hr instead of 10 km/hr, he would have walked 20 km more. The actual distance travelled by him is:','50 km','60 km','70 km','80 km','10','50 km')";
             String sql51="INSERT INTO SET4(Q4,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('A man complete a journey in 10 hours. He travels first half of the journey at the rate of 21 km/hr and second half at the rate of 24 km/hr. Find the total journey in km.','220 km','224 km','230 km','234 km','11','224 km')";
             String sql52="INSERT INTO SET4(Q4,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('A farmer travelled a distance of 61 km in 9 hours. He travelled partly on foot @ 4 km/hr and partly on bicycle @ 9 km/hr. The distance travelled on foot is:','14 km','15 km','16 km','17 km','12','16 km')";
             String sql53="INSERT INTO SET4(Q4,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('A can do a work in 15 days and B in 20 days. If they work on it together for 4 days, then the fraction of the work that is left is :','14','110','715','815','13','815')";
             String sql54="INSERT INTO SET4(Q4,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('P can complete a work in 12 days working 8 hours a day. Q can complete the same work in 8 days working 10 hours a day. If both P and Q work together, working 8 hours a day, in how many days can they complete the work?','5 5/11','5 6/11','6 5/11','6 6/11','14','5 5/11')";
             String sql55="INSERT INTO SET4(Q4,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('X and Y can do a piece of work in 20 days and 12 days respectively. X started the work alone and then after 4 days Y joined him till the completion of the work. How long did the work last?','6 days','10 days','15 days','20 days','15','10 days')";
             
             Statement stmt=Connect.database().createStatement();
                int count=stmt.executeUpdate(sql41);
                stmt.executeUpdate(sql42);
                stmt.executeUpdate(sql43);
                stmt.executeUpdate(sql44);
                stmt.executeUpdate(sql45);
                stmt.executeUpdate(sql46);
                stmt.executeUpdate(sql47);
                stmt.executeUpdate(sql48); 
                stmt.executeUpdate(sql49);
                stmt.executeUpdate(sql50);
                stmt.executeUpdate(sql51);
                stmt.executeUpdate(sql52);
                stmt.executeUpdate(sql53);
                stmt.executeUpdate(sql54);
                stmt.executeUpdate(sql55);
                out.println("inserted");
                
            }
            

        %>
    </body>
</html>
