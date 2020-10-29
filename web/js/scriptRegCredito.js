function guardar() {
    credito = {

    };
    $.ajax({
        type: "PUT",
        url: "http://localhost:8084/VegaWeb/api/registrocredito;charset=UTF-8",
        data: JSON.stringify(credito),
        contentType: "application/json"
    }).done(function (data) {
        doneCredito(data);
    }).fail(function (jqXHR, textStatus, errorThrown) {
        failCredito();
    });
}
function doneCredito() {
    alert("Crédito guardado con éxito.");
}
function failCredito() {
    alert("Ha ocurrido un error, por favor, vuelva a intentar.");
}

