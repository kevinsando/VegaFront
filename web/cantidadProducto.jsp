<%-- 
    Document   : cantidadProducto
    Created on : 26/10/2020, 07:27:08 PM
    Author     : Kevin Sandoval
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
        <script src="js/scriptProdEsp.js" type="text/javascript"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        
        <title>Producto específico</title>
    </head>
    <body id = "prodEsp">
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
                        <a class="nav-link" href="registroVendidos.jsp">Productos vendidos</a>
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
                        <a class="nav-link disabled" href="cantidadProducto.jsp">Reporte específico</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="registroCreditos.jsp">Ingresar credito</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="productosVendidos.jsp">Productos vendidos(mes)</a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="formulario">
            <form class="was-validated" method="POST" action="javascript:resultado()">
                <table id="tablaReporteV" class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th colspan="2">
                                Reporte específico
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <label for="NombCodLabel">Código o nombre del producto:&nbsp;</label>
                                <input type="text" id="NombCod" name="NombCod" size="12" placeholder="XXXX" required/>
                                <div class="valid-feedback">Valido</div>
                                <div class="invalid-feedback" >Por favor rellena el campo</div>
                            </td>

                        </tr>
                        <tr>
                            <td class="boton" colspan="2">
                                <button type="submit" class="btn btn-light" value="Submit Button">Generar reporte</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
         <div id="contents">
                <section style="float: left; padding-left: 50px; width: 60%;">

                    <table class="table table-hover tablaExis2">
                        <thead class="thead-light" id="head">
                        </thead>
                        <tbody id="body"></tbody>
                    </table>
                </section>
            </div>
    </body>
</html>
