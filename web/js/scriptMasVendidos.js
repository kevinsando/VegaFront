var list = null, table = null;

function init() {
    console.log("iniciando...");
    listar();

}

function listar() {
    console.log("listando...");
    $.ajax({
        type: "GET",
        url: 
        "http://localhost:8084/VegaWeb/api/productosmas;charset=UTF-8"
    }).done(function (data) {
        cargarTabla(data);
    }).fail(function (jqXHR, textStatus, errorThrown) {
        failListMenu();
    });

}

function cargarTabla(datos) {
    console.log("Cargando tabla...");
    
    list = datos;
    table = $("#body");
    head = $("#head");
    table.html("");
    head.html("");
    createHead(head);
    for(var item in datos){
        createRow(table, datos[item]);
        
    }
    //location.href = "tablaMas.jsp";
}
function createRow(table, item){
    var tr = $("<tr/>");
    tr.html(
              "<td>" + item.atrFecha   + "</td>"
            + "<td>" + item.atrNombre  + "</td>"
            + "<td>" + item.atrCodigo  + "</td>"

            );
    table.append(tr);
}
function createHead(head){
    var tr = $("<tr/>");
    tr.html(
              "<th>" + "Fecha vendido"   + "</th>"
            + "<th>" + "Nombre"          + "</th>"
            + "<th>" + "Codigo"          + "</th>"

            );
    head.append(tr);
}
function failListMenu() {
    console.log("ERROR");
}