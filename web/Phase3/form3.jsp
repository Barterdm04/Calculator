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
        <h1>Enter the information below to calculate the area of a rectangle:</h1>
        <form id="form1" name="form1" method="POST" action='<%= request.getContextPath() + "/agc3"%>'>
            <input id="value1" name="value1" type="text" value="ENTER LENGTH" />
            <input id="value2" name="value2" type="text" value ="ENTER WIDTH" />
        
        
        <% 
            String areaRectString = "";
            Object objAreaRect = request.getAttribute("areaRect");
            areaRectString = objAreaRect == null ? areaRectString : objAreaRect.toString();
            String results1;
            if (areaRectString == ""){
                results1 = "";
            } else {
                results1 = "<h1>Rectangle Area Results:</h1> <br> " + areaRectString;
            }
        %>
        
        <h2><%= results1 %></h2>
        <br>
        <h1>Enter the information below to calculate the area of a circle:</h1>
            <input id="circle1" name="circle1" type="text" value="ENTER RADIUS" />

        <% 
            String areaCircleString = "";
            Object objAreaCircle = request.getAttribute("areaCircle");
            areaCircleString = objAreaCircle == null ? areaCircleString : objAreaCircle.toString();
            String results2;
            if (areaCircleString == ""){
                results2 = "";
            } else {
                results2 = "<h1>Circle Area Results:</h1> <br> " + areaCircleString;
            }
        %>
        
        <h2><%= results2 %></h2>  
        <br>
        <h1>Enter the information below to calculate the area of a triangle:</h1>
            <input id="tri1" name="tri1" type="text" value="ENTER BASE" />
            <input id="tri2" name="tri2" type="text" value ="ENTER HEIGHT" />
        
        <% 
            String areaTriString = "";
            Object objAreaTri = request.getAttribute("areaTriangle");
            areaTriString = objAreaTri == null ? areaTriString : objAreaTri.toString();
            String results3;
            if (areaTriString == ""){
                results3 = "";
            } else {
                results3 = "<h1>Circle Area Results:</h1> <br> " + areaTriString;
            }
        %>
        <h2><%= results3 %></h2>  
        <input type="submit" name="submit" value="Enter" />
        </form>
    </body>
</html>
