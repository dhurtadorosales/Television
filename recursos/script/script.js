var debug = false;

window.onload = function () {
    main();
}

//Obtención elementos 
function getCalendario() {
    return document.getElementById("tbCalendario");
}

function main() {

    if (debug) {
        console.log(getCalendario());
    }
    
    //Evento cambio de fecha
    getCalendario().addEventListener("change", enviar);
}

function enviar() {
    document.forms[0].submit();
}


