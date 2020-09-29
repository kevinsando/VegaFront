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

        <title>Venta</title>
    </head>
    <body id="regVentas">
        <div>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
                <ul class="navbar-nav">
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
                </ul>
            </nav>
        </div>
        <div class="formulario">           
            <form class="was-validated" method="POST" action="#">
                <table id="tablaRegistroV" class="table">
                    <thead class="thead-dark">
                            <tr>
                                <th colspan="4">
                                    Venta
                                </th>
                            </tr>
                        </thead>
                    <tbody>
                        <tr>
                            <td>
                                <label for="fecha">Fecha:&nbsp;</label>
                            </td>
                            <td>
                                <input type="text" id="fecha" name="fecha" size="12" placeholder="XX/XX/XXXX" required/>
                                <div class="valid-feedback">Valido</div>
                                <div class="invalid-feedback" >Por favor rellena el campo</div>
                            </td>
                            <td>
                                <label for="cliente">Cliente:&nbsp;</label>
                            </td>
                            <td>
                                <input type="text" id="cliente" name="cliente" size="30" required/>
                                <div class="valid-feedback">Valido</div>
                                <div class="invalid-feedback" >Por favor rellena el campo</div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="descripcion">Descripcion:&nbsp;</label>
                            </td>
                            <td>
                                <input type="text" id="descripcion" name="descripcion" size="12" required/>
                                <div class="valid-feedback">Valido</div>
                                <div class="invalid-feedback" >Por favor rellena el campo</div>
                            </td>
                            <td>
                                <label for="codigo">Codigo:&nbsp;</label>
                            </td>
                            <td>
                                <input type="text" id="codigo" name="codigo" size="30" required/>
                                <div class="valid-feedback">Valido</div>
                                <div class="invalid-feedback" >Por favor rellena el campo</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="boton" colspan="4">
                                <button type="submit" class="btn btn-light" value="Submit Button">Guardar</button>
                                <button type="reset" class="btn btn-light" value="Reset Button">Borrar</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <nav><a href="reporteMasVendidos.jsp" style="color: black"> <p>Reporte</p> </a> </nav>
        </div>
    </body>
</html>
