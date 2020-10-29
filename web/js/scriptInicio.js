function init() {
    var txt;
    var r = confirm("¡Alerta, productos sin inventario!");
    if (r === true) {
        location.href = "alertaAgotados.jsp";
    } else {
        txt = "You pressed Cancel!";
    }
}


