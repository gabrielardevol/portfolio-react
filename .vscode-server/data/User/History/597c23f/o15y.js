function saludar(){
  alert("hola")
}
saludar()

////////////////////////////

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

document.querySelectorAll(".carta").forEach(
  function(elemento){
    elemento.addEventListener("click", descubrir)
  }
)
////////////////////////////
// javascript object
var miku = {
hair: "blue",
songs: "world is mine",
release: 2007
}

////////////////////////////
function barajarTargetas2() {
  var resultado = Math.floor(Math.random()*10);
  alert(resultado)
}
////////////////////////////
console.log(array.sort())
////////////////////////////
function barajarTargetas() {
  var resultado;
  resultado = array.sort(function() {
   return 0.9 // 0.5 - Math.random();
  })
  console.log(resultado)
}
