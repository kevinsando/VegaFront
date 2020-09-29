function init() {
    console.log("iniciando...");
    listar();

}

function listar() {
    console.log("listando...");
    $.ajax({
        type: "GET",
        url: "http://localhost:8081/VegaWeb/api/existencias;charset=UTF-8"
    }).done(function (data) {
        cargarTabla(data);
    }).fail(function (jqXHR, textStatus, errorThrown) {
        failListMenu();
    });
}

function cargarTabla(datos) {
    var refTabla = document.getElementById("body");
    var i = 0;
    if (refTabla) {
        var nuevaFila = refTabla.insertRow(-1);
        var nuevaCelda;
        datos.forEach(
                function (objeto) {
                    /*
                    nuevaCelda = nuevaFila.insertCell(-1);
                    const button = document.createElement('button');
                    button.type = 'submit';
                    button.innerText = objeto.descripcion;
                    button.id = objeto.secuencia;

                    button.onclick = function () {
                        console.log(objeto.precio);
                    };
                    nuevaCelda.appendChild(button);
                    */
                     nuevaCelda = nuevaFila.insertCell(-1);
                     nuevaCelda.textContent = objeto.AtrNombre;
                     nuevaCelda.setAttribute('class', 'd2');
                     
                     nuevaCelda = nuevaFila.insertCell(-1);
                     nuevaCelda.textContent = objeto.AtrCodigo;
                     nuevaCelda.setAttribute('class', 'd3');
                     
                     nuevaCelda = nuevaFila.insertCell(-1);
                     nuevaCelda.textContent = objeto.AtrCantidad;
                     nuevaCelda.setAttribute('class', 'd4');
                     
                     nuevaCelda = nuevaFila.insertCell(-1);
                     nuevaCelda.textContent = objeto.AtrPrecio;
                     nuevaCelda.setAttribute('class', 'd5');
                     
                });
    }
}
function failListMenu() {
    console.log("ERROR");
}