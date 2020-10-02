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
        "http://localhost:8084/VegaWeb/api/existencias;charset=UTF-8"
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
    table.html("");
    for(var item in datos){
        createRow(table, datos[item]);
    }
}
function createRow(table, item){
    var tr = $("<tr/>");
    tr.html(
              "<td>" + item.atrNombre      + "</td>"
            + "<td>" + item.atrCodigo      + "</td>"
            + "<td>" + item.atrDescripcion + "</td>"
            + "<td>" + item.atrCantidad    + "</td>"
            + "<td>" + item.atrGrupo       + "</td>"
            + "<td>" + item.atrFabricante  + "</td>"
            );
    table.append(tr);
}
function failListMenu() {
    console.log("ERROR");
}