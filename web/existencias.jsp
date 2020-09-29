<%-- 
    Document   : existencias
    Created on : 28/09/2020, 09:41:09 PM
    Author     : Kevin Sandoval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="VEGA.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/scriptExistencias.js" type="text/javascript"></script>
        
        <link href="css/default.css" rel="stylesheet" type="text/css"/>
        <title>Existencias</title>
    </head>
    <body id="existencias"  onload="init();">
        <div id="contents">
            <section style="float: left; padding-left: 24px; width: 45%;">

                <table class="menu">
                    <thead>
                        <tr>
                            <th colspan="6"><h2>Menú</h2></th>
                        </tr>

                    </thead> 
                    <tbody id="body"></tbody>
                </table>
            </section>
        </div>
    </body>
</html>
