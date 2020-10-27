
function init() {
    console.log("iniciando...");
    resultado();

}

function resultado(){
    $.ajax({
        type: "GET",
        url: "http://localhost:8084/VegaWeb/api/existencias/"+$('#NombCod').val()+";charset=UTF-8"
    }).done(function(data){
        cargarTabla(data);
    }).fail(function (jqXHR, textStatus, errorThrown){
        failGetInfo();
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
        createRow(table, datos);
}
function createRow(table, item){
    var tr = $("<tr/>");
    tr.html(
              "<td>" + item.atrNombre      + "</td>"
            + "<td>" + item.atrCodigo      + "</td>"
            + "<td>" + item.atrCantidad    + "</td>"
            + "<td>" + item.atrDescripcion + "</td>"
            + "<td>" + item.atrGrupo       + "</td>"
            + "<td>" + item.atrFabricante  + "</td>"
            

            );
    table.append(tr);
}
function createHead(head){
    var tr = $("<tr/>");
    tr.html(
              "<th>" + "Nombre"      + "</th>"
            + "<th>" + "Codigo"      + "</th>"
            + "<th>" + "Descripción" + "</th>"
            + "<th>" + "Cantidad"    + "</th>"
            + "<th>" + "Grupo"       + "</th>"
            + "<th>" + "Fabricante"  + "</th>"
            );
    head.append(tr);
}
function failGetInfo(){
    console.log("Error");
}





