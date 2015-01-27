<%-- 
    Document   : result
    Created on : Jan 27, 2015, 1:39:11 PM
    Author     : dbarter1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area Results</title>
    </head>
    <body>
        <h1>Area Results:</h1>
        
        <% 
            String areaString = " AN ERROR HAS OCCURED ";
            Object objArea = request.getAttribute("area");
            areaString = objArea == null ? areaString : objArea.toString();
            
        %>
        <h2><%= areaString %></h2>
    </body>
</html>
