<%-- 
    Document   : results
    Created on : Sep 29, 2017, 9:27:16 AM
    Author     : Ryan Erchinger
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
        <link rel="stylesheet" type="text/css" href="./SSCstylesheet.css"/>
    </head>
    
    <%
        
        String paramhoursWorked = request.getParameter("Hours_Worked");
        int hoursWorked = Integer.parseInt(paramhoursWorked.trim());
        String paramhourlyPay = request.getParameter("Hourly_Pay");
        double hourlyPay = Integer.parseInt(paramhourlyPay.trim());
        String parampreTaxDeduct = request.getParameter("Pre-tax_Deduct");
        int preTaxDeduct = Integer.parseInt(parampreTaxDeduct.trim());
        String parampostTaxDeduct = request.getParameter("Post-tax_Deduct");
        int postTaxDeduct = Integer.parseInt(parampostTaxDeduct.trim());
   

    %>
    <body>
        <h1>Salary Info</h1>
        
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= paramhoursWorked %></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= paramhourlyPay %></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td><%
                        int regularHours = 40;
                        int otHours = 0;
                        if (hoursWorked > 40){
                            otHours = (hoursWorked - 40);
                            out.println(otHours);}
                        
                        else{
                            otHours = 0;
                            out.println("none");}
                        %>
                    </td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%
                        double otPayRate = (hourlyPay * 1.5);
                        out.println(otPayRate);
                        %>
                    </td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%
                        double regularPay = (hoursWorked * hourlyPay);
                        double otPay = (otHours * otPayRate);
                        double grossPay = (regularPay + otPay);
                        out.println(grossPay);
                        %>
                    </td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= parampreTaxDeduct %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%
                        double taxablePay = (grossPay - preTaxDeduct);
                        out.println(taxablePay);
                        %>
                    </td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td><%
                        double taxAmount = 0;
                        if (grossPay < 500){
                            taxAmount = (taxablePay * .18);
                        }else{
                            taxAmount = (taxablePay * .22);
                        }
                        out.println(taxAmount);
                        %>
                    </td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%
                        double postTaxPay = (taxablePay - taxAmount);
                        out.println(postTaxPay);
                        %>
                    </td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= parampostTaxDeduct %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%
                        double netPay = (postTaxPay - postTaxDeduct);
                        out.println(netPay);
                        %>
                    </td>
                </tr>
                
            </tbody>
        </table>
    </body>
</html>
