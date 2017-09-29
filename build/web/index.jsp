<%-- 
    Document   : index
    Created on : Sep 29, 2017, 8:45:15 AM
    Author     : Ryan Erchinger
--%>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="./SSCstylesheet.css"/>
    </head>
    <h1>Simple Salary Calculator</h1>
    <form name="Simple Salary Calculator" action="results.jsp" method="post">
        <table border="1">
            <tbody>
                <tr>
                    <td>Hours Worked:</td>
                    <td><input type="text" name="Hours_Worked" value="" size="50>"></td>
                </tr>
                <tr>
                    <td>Hourly Pay:</td>
                    <td><input type="text" name="Hourly_Pay" value="" size="50>"></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><input type="text" name="Pre-tax_Deduct" value="" size="50>"></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><input type="text" name="Post-tax_Deduct" value="" size="50>"></td>
                </tr>
                
                
            </tbody>
        </table>
        
        <input type="reset" value="Clear" id="clear">
        <input type="submit" value="Sumbit" id="submit">
        
    </form>
    <body>
    </body>
</html>
