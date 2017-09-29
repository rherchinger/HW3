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
                        int otHours = (hoursWorked - 40);
                        System.out.println(otHours);
                        %>
                    </td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%
                        double otPayRate = (hourlyPay * 1.5);
                        System.out.println(otPayRate);
                        %>
                    </td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%
                        double regularPay = (hoursWorked * hourlyPay);
                        double otPay = (otHours * otPayRate);
                        double grossPay = (regularPay + otPay);
                        
                        
                        %>
                    </td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= parampreTaxDeduct %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= parampostTaxDeduct %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td></td>
                </tr>
                
            </tbody>
        </table>
    </body>
</html>
