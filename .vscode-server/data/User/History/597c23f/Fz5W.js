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
  div.innerHTML = elemento + índice ;
  mesa.appendChild(div) ;
})
