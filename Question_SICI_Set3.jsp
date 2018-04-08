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
String sql21="INSERT INTO SET3(Q3,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('How much time will it take for an amount of Rs. 900 to yield Rs. 81 as interest at 4.5% per annum of simple interest?','2years','3years','1years','4years','1','2years')";
String sql22="INSERT INTO SET3(Q3,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('A sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is :','Rs.700','Rs.700','Rs.690','Rs.650','2','Rs.698')";
String sql23="INSERT INTO SET3(Q3,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('A sum fetched a total simple interest of Rs. 929.20 at the rate of 8 p.c.p.a. in 5 years. What is the sum?','Rs. 2323','Rs. 1223','Rs. 2563','Rs. 2353','3','Rs. 2323')";
String sql24="INSERT INTO SET3(Q3,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('Mr. Thomas invested an amount of Rs. 13,900 divided in two different schemes A and B at the simple interest rate of 14% p.a. and 11% p.a. respectively. If the total amount of simple interest earned in 2 years be Rs. 3508, what was the amount invested in Scheme B?','Rs. 6400','Rs. 7200','Rs. 6500','Rs. 7500','4','Rs. 6400')";
String sql25="INSERT INTO SET3(Q3,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('The difference between simple interest and compound on Rs. 900 for one year at 10% per annum reckoned half-yearly is:','Rs. 3','Rs. 2.25','Rs. 4.5','Rs. 4','5','Rs. 2.25')";
String sql26="INSERT INTO SET3(Q3,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('At what rate of compound interest per annum will a sum of Rs. 1400 become Rs. 1573.04 in 2 years?','4%','5%','6%','8%','6','6%')";
String sql27="INSERT INTO SET3(Q3,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('What will be the ratio of simple interest earned by certain amount at the same rate of interest for 5 years and that for 15 years?','3 : 2','1 : 3','2 : 3','3 : 1','7','1 : 3')";
String sql28="INSERT INTO SET3(Q3,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('What annual payment will discharge a debt of Rs. 6450 due in 4 years at 5% per annum?','Rs.1500','Rs.1400','Rs.1800','Rs.1600','8','Rs.1500')";
String sql29="INSERT INTO SET3(Q3,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('The least number of complete years in which a sum of money put out at 20% compound interest will be more than doubled is','5','4','3','2','9','4')";
String sql30="INSERT INTO SET3(Q3,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('Simple interest on a certain sum of money for 4 years at 5% per annum is half the compound interest on Rs. 3000 for 2 years at 10% per annum. The sum placed on simple interest is:','Rs. 2200','Rs.1575','Rs.1200','Rs.1675','10','Rs.1575')";
String sql31="INSERT INTO SET3(Q3,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('The difference between simple interest and compound on Rs. 2400 for one year at 10% per annum reckoned half-yearly is:','Rs. 4','Rs. 6','Rs. 3','Rs. 2','11','Rs. 6')";
String sql32="INSERT INTO SET3(Q3,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('The Compound interest on Rs. 20,480 at 6 1⁄4 % per annum for 2 years 73 days, is :','Rs. 2929','Rs. 2219','Rs. 3021','Rs. 3049','12','Rs. 2929')";
String sql33="INSERT INTO SET3(Q3,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('A sum amounts to Rs. 882 in 2 years at 5% compound interest. The sum is','Rs. 800','Rs. 840','Rs. 816','Rs. 822','13','Rs. 800')";
String sql34="INSERT INTO SET3(Q3,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('What is the interest due after 40 days for Rs. 3200 at 10%','35.07','36.21','35.52','34','14','35.07')";
String sql35="INSERT INTO SET3(Q3,OPT1,OPT2,OPT3,OPT4,ID,ANS) VALUES('What is the rate of interest at which Rs.150 becomes Rs. 225 in 10 years.','20%','5%','12%','14%','15','12%')";
           Statement stmt=Connect.database().createStatement();
                int count=stmt.executeUpdate(sql21);
                stmt.executeUpdate(sql22);
                stmt.executeUpdate(sql23);
                stmt.executeUpdate(sql24);
                stmt.executeUpdate(sql25);
                stmt.executeUpdate(sql26);
                stmt.executeUpdate(sql27);
                stmt.executeUpdate(sql28); 
                stmt.executeUpdate(sql29);
                stmt.executeUpdate(sql30);
                stmt.executeUpdate(sql31);
                stmt.executeUpdate(sql32);
                stmt.executeUpdate(sql33);
                stmt.executeUpdate(sql34);
                stmt.executeUpdate(sql35);
                out.println("inserted"); 
            }
            %>
