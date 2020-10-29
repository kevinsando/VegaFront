<%-- 
    Document   : tablaMas
    Created on : 02/10/2020, 04:36:30 PM
    Author     : KEVINSANDOVALMADRIGA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="../js/jquery.min.js" type="text/javascript"></script>
        <script src="../js/scriptMasVendido.js" type="text/javascript"></script>
        <title>Reporte Más vendidos</title>
    </head>
    <body>
        <div id="contents">
                <section style="float: left; padding-left: 24px; width: 45%;">

                    <table class="reporte">
                        <thead>
                            <tr>
                                <th colspan="6"><h2>Reporte</h2></th>
                            </tr>

                        </thead> 
                        <tbody id="body"></tbody>
                    </table>
                </section>
            </div>
    </body>
</html>
