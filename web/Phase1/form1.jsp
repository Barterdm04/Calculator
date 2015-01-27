<%-- 
    Document   : index
    Created on : Jan 27, 2015, 1:29:06 PM
    Author     : dbarter1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area Form</title>
    </head>
    <body>
        <h1>Enter the information below to calculate area:</h1>
        <form id="form1" name="form1" method="POST" action="../agc2">
            <input id="value1" name="value1" type="text" value="ENTER LENGTH" />
            <input id="value2" name="value2" type="text" value ="ENTER WIDTH" />
            <input type="submit" name="submit" value="Enter" />
        </form>
    </body>
</html>
