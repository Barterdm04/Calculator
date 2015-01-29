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
        <link href='<%= request.getContextPath() + "/content/form.css"%>' rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="box">
        <h3>Enter the information below to calculate the area of a rectangle:</h3>
        <form id="form1" name="form1" method="POST" action='<%= request.getContextPath() + "/agc3"%>'>
            <input id="value1" name="value1" type="text" value="" placeholder="Length" />
            <input id="value2" name="value2" type="text" value ="" placeholder="Width"/>
        
        
        <% 
            String areaRectString = "";
            Object objAreaRect = request.getAttribute("areaRect");
            areaRectString = objAreaRect == null || objAreaRect.equals("") ? areaRectString : objAreaRect.toString();
            String results1;
            if (areaRectString == ""){
                results1 = "";
            } else {
                results1 = "Rectangle Area Results: " + areaRectString;
            }
        %>
        
        <br>
        
        <h2 class="results"><%= results1 %></h2>
        </div>
        <br>
        <div class="box">
        <h3>Enter the information below to calculate the area of a circle:</h3>
            <input id="circle1" name="circle1" type="text" value="" placeholder="Radius"/>

        <% 
            String areaCircleString = "";
            Object objAreaCircle = request.getAttribute("areaCircle");
            areaCircleString = objAreaCircle == null ? areaCircleString : objAreaCircle.toString();
            String results2;
            if (areaCircleString == ""){
                results2 = "";
            } else {
                results2 = "Circle Area Results: " + areaCircleString;
            }
        %>
        <h2 class="results"><%= results2 %></h2>
        </div>  
        <br>
        <div class="box">
        <h3>Enter the information below to calculate the area of a triangle:</h3>
            <input id="tri1" name="tri1" type="text" value="" placeholder="Base"/>
            <input id="tri2" name="tri2" type="text" value ="" placeholder="Height"/>
        
        <% 
            String areaTriString = "";
            Object objAreaTri = request.getAttribute("areaTriangle");
            areaTriString = objAreaTri == null ? areaTriString : objAreaTri.toString();
            String results3;
            if (areaTriString == ""){
                results3 = "";
            } else {
                results3 = "Triangle Area Results: " + areaTriString;
            }
        %>
        <h2 class="results"><%= results3 %></h2>  
        </div>
        <br>
        <br>
        <input type="submit" name="submit" value="Calculate" class="button"/>
        </form>
    </body>
</html>
