<%-- 
    Document   : registroVendidos
    Created on : Sep 26, 2020, 2:15:45 PM
    Author     : MIGUEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="VEGA.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        
        <link href="css/default.css" rel="stylesheet" type="text/css"/>
        
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/scriptRegistroVendidos.js" type="text/javascript"></script>
        <title>Venta</title>
    </head>
    <body id="regVentas">
        <div>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="navbar-brand" href="#">
                            <img src="Logo vega 2.png" alt="Logo" style="width:30px;">
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="inicio.jsp">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="registroVendidos.jsp">Venta</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="reporteMasVendidos.jsp">Reporte de ventas</a>
                    </li>
                    <li class="nav-item">
                            <a class="nav-link" href="existencias.jsp">Existencias</a>
                    </li>
                    <li class="nav-item">
                            <a class="nav-link" href="registroMenosVendidos.jsp">Menos vendidos</a>
                    </li>
                </ul>
            </nav>
        </div>
        <div id="contentsVenta">
            <form method="POST" action="javascript:listar()">
                <button type="submit" class="btn btn-info btn-block botonGenerar" value="Submit Button">Generar registro</button>
            </form>
            <table class="table tablaExis1">
                <thead class="thead-dark">
                    <tr>
                        <th colspan="3"><h2>Productos vendidos</h2></th>
                    </tr>
                </thead> 
            </table>
            <table class="table table-hover tablaExis2">
                <thead class="thead-light">
                    <tr>
                        <th>Fecha vendido</th>
                        <th>Nombre</th>
                        <th>Cliente</th>                        
                    </tr>
                </thead>
                <tbody id="body"></tbody>
            </table>
        </div>
            <nav><a href="reporteMasVendidos.jsp" style="color: black"> <p>Reporte</p> </a> </nav>
    </body>
</html>
