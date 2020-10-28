
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

        <title>Registro Creditos</title>
    </head>
    <body id="regCreditos">
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
                        <a class="nav-link" href="registroVendidos.jsp">Venta</a>
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
                    <li class="nav-item">
                        <a class="nav-link" href="cantidadProducto.jsp">Reporte específico</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="registroCreditos.jsp">Ingresar credito</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="productosVendidos.jsp">Productos vendidos(mes)</a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="content-creditos">
            <form method="POST" action="#">
                <table class="table tablaCred2">
                    <thead class="thead-dark">
                        <tr>
                            <th colspan="3"><h2>Registro de creditos</h2></th>
                        </tr>
                    </thead>
                </table>
                <table class="table table-hover tablaCred">
                    <thead class="thead-light">
                        <tr>
                            <th>Datos cliente</th>
                            <th>Datos Factura</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <label for="cedula">Cédula:&nbsp;</label>
                                <input type="text" id="cedula" name="cedula" size="20"
                                       pattern="[1-9]-[0-9]{4}-[0-9]{4}"

                                       title="Número de cédula: X-XXXX-XXXX"
                                       autofocus="autofocus" />
                            </td>
                            <td>
                               <label for="numFactura">numero de factura:&nbsp;</label>
                               <input type="text" id="numFactura" name="numFactura" size="20">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="nombre">Nombre:&nbsp;</label>
                                <input type="text" id="nombreCliente" name="nombreCliente" size="40">
                            </td>
                            <td>
                               <label for="fechaSo">Fecha de solicitud:&nbsp;</label>
                               <input type="text" id="fechaSo" name="fechaSo" size="20">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="telefono">Telefono:&nbsp;</label>
                                <input type="text" id="telefono" name="telefono" size="20"
                                       pattern="[0-9]{4}-[0-9]{4}"

                                       title="telefono: XXXX-XXXX"
                                       autofocus="autofocus">
                            </td>
                            <td rowspan="2">
                               <label for="montoCre">monto de credito:&nbsp;</label>
                               <input type="text" id="montoCre" name="montoCre" size="20">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="direccion">Direccion:&nbsp;</label>
                                <input type="text" id="direccion" name="direccion" size="40">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <button type="submit" class="btn btn-info btn-block botonGenerar" value="Submit Button">Guardar</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </body>
</html>
