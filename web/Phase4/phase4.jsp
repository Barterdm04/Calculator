<%-- 
    Document   : phase4
    Created on : Jan 29, 2015, 1:04:14 PM
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
        <form id="form1" name="form1" method="POST" action='<%= request.getContextPath() + "/agc4"%>'>
            <input id="value1" name="value1" type="text" value="" placeholder="Length" />
            <input id="value2" name="value2" type="text" value ="" placeholder="Width"/>        
        <br>
        
        <h2 class="results">${areaRect}</h2>
        </div>
        <br>
        <div class="box">
        <h3>Enter the information below to calculate the area of a circle:</h3>
            <input id="circle1" name="circle1" type="text" value="" placeholder="Radius"/>


        <h2 class="results">${areaCircle}</h2>
        </div>  
        <br>
        <div class="box">
        <h3>Enter the information below to calculate the area of a triangle:</h3>
            <input id="tri1" name="tri1" type="text" value="" placeholder="Base"/>
            <input id="tri2" name="tri2" type="text" value ="" placeholder="Height"/>
        

        <h2 class="results">${areaTriangle}</h2>  
        </div>
        <br>
        <br>
        <input type="submit" name="submit" value="Calculate" class="button"/>
        </form>
    </body>
</html>
