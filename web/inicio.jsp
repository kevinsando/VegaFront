<%-- 
    Document   : inicio
    Created on : Sep 26, 2020, 4:26:10 PM
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

        <title>Inicio</title>
    </head>
    <body>
        <header>
            <div>
                <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="navbar-brand" href="#">
                                <img src="Logo vega 2.png" alt="Logo" style="width:30px;">
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="inicio.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="registroVendidos.jsp">Venta de Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="reporteMasVendidos.jsp">Productos más vendidos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="existencias.jsp">Existencias</a>
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
                            <a class="nav-link" href="productosVendidos.jsp">Productos vendidos(mes)</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="alertaAgotados.jsp">Productos agotados</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
        <div class="opciones">
         <a href="alertaAgotados.jsp" id="botones" class="btn btn-danger btn-block" role="button"><p class="parra2">Productos agotados</p></a>
        <div class="container-fluid">
            <div class="row justify-content-between rowTam">
                <div class="col">
                    <a href="registroVendidos.jsp" id="botones" class="btn btn-info" role="button"><p class="parra">Productos vendidos</p></a>
                </div>
                <div class="col">
                    <a href="reporteMasVendidos.jsp" id="botones" class="btn btn-info" role="button"><p class="parra">Reporte productos más vendidos</p></a>
                </div>
            </div>
            <div class="row justify-content-between rowTam">
                <div class="col">
                    <a href="existencias.jsp" id="botones" class="btn btn-info" role="button"><p class="parra">Existencias</p></a>
                </div>
                <div class="col">
                    <a href="registroMenosVendidos.jsp" id="botones" class="btn btn-info" role="button"><p class="parra">Registro productos menos vendidos</p></a>
                </div>
                <div class="col">
                    <a href="cantidadProducto.jsp" id="botones" class="btn btn-info" role="button"><p class="parra">Cantidad de un producto específico</p></a>
                </div>
            </div>
            <div class="row justify-content-between rowTam">
                <div class="col">
                    <a href="productosVendidos.jsp" id="botones" class="btn btn-info" role="button"><p class="parra">Productos vendidos por mes</p></a>
                </div>
                <div class="col">
                    <a href="registroCreditos.jsp" id="botones" class="btn btn-info" role="button"><p class="parra">Registrar credito</p></a>
                </div>
            </div>
        </div>
        </div>
    </body>
</html>
