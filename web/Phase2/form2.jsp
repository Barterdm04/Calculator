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
        <form id="form2" name="form2" method="POST" action='<%= request.getContextPath() + "/agc2"%>'>
            <input id="value1" name="value1" type="text" value="ENTER LENGTH" />
            <input id="value2" name="value2" type="text" value ="ENTER WIDTH" />
            <input type="submit" name="submit" value="Enter" />
        </form>
        
        
        <% 
            String areaString = "";
            Object objArea = request.getAttribute("area");
            areaString = objArea == null ? areaString : objArea.toString();
            String results;
            if (areaString == ""){
                results = "";
            } else {
                results = "<h1>Area Results:</h1> <br> " + areaString;
            }
        %>
        
        <h2><%= results %></h2>
    </body>
</html>
