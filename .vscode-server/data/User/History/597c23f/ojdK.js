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
console.log(mesa)
mesa.innerHTML = "<p> hola </p>"
/////////////////////////////
div = document.createElement("div")
mesa.innerHTML = div
