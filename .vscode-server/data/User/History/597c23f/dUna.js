function saludar(){
  alert("hola")
}
saludar()

/////////////////////////////

array = ["๐","๐","๐ฆ","๐","๐","๐ฅ"]

array.forEach(function(elemento, รญndice) {
  console.log(elemento, รญndice);
})

////////////////////////////

var mesa = document.querySelector("#mesa");
//console.log(mesa)
mesa.innerHTML = "<p> hola </p>"
div = document.createElement("div")
div.innerHTML = "๐"
//console.log(div)
mesa.appendChild(div)

////////////////////////////
