function saludar(){
  alert("hola")
}
saludar()

/////////////////////////////

array = ["👀","😛","💦","💋","🍆","🔥"]

array.forEach(function(elemento, índice) {
  console.log(elemento, índice);
})

////////////////////////////

var mesa = document.querySelector("#mesa");
//console.log(mesa)
mesa.innerHTML = "<p> hola </p>"
div = document.createElement("div")
div.innerHTML = "👀"
//console.log(div)
mesa.appendChild(div)

////////////////////////////

array.forEach(function(elemento, índice) {
  div = document.createElement("div") ;
  div.innerHTML =
  "<div class='carta'>" +
  elemento +
  "</div>"
  //aquí es copiaria la classe, etc
  mesa.appendChild(div) ;
})

// per a duplicar el nombre de targetes, concatenar l'array amb sí mateix
////////////////////////////
function descubrir() {
  this.classList.add("descubierta");
}
///////////////////////////
document.querySelectorAll(".carta").forEach(
  function(elemento){
    console.log(elemento)
  }
)
;