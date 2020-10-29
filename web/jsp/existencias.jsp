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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>


        <script src="../js/jquery.min.js" type="text/javascript"></script>
        <script src="../js/scriptExistencias.js" type="text/javascript"></script>

        <link href="../css/default.css" rel="stylesheet" type="text/css"/>
        <title>Existencias</title>
    </head>
    <body id="existencias"  onload="init();">
        <div class="container-fluid">
            <div>
                <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="navbar-brand" href="#">
                                <img src="Logo vega 2.png" alt="Logo" style="width:30px;">
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../inicio.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="registroVendidos.jsp">Productos vendidos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="reporteMasVendidos.jsp">Productos más vendidos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link  disabled" href="existencias.jsp">Existencias</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="registroMenosVendidos.jsp">Productos menos vendidos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="cantidadProducto.jsp">Reporte específico</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="registroCreditos.jsp">Ingresar credito</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="productosVendidos.jsp">Reporte ventas del mes</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div id="contents">
                <form method="POST" action="#">
                    <button type="submit" class="btn btn-info btn-block botonGenerar" value="Submit Button">Generar reporte</button>
                </form>
                <table class="table tablaExis1">
                    <thead class="thead-dark">
                        <tr>
                            <th colspan="5"><h2>Productos existentes</h2></th>
                        </tr>
                    </thead> 
                </table>
                <table class="table table-hover tablaExis2">
                    <thead class="thead-light">
                        <tr>
                            <th>Nombre</th>
                            <th>Codigo</th>
                            <th>Descripción</th>
                            <th>Cantidad</th>
                            <th>Grupo</th>
                            <th>Fabricante</th>
                        </tr>
                    </thead>
                    <tbody id="body"></tbody>
                </table>
            </div>
        </div>
    </body>
</html>
