function price(){
  const price = document.getElementById("item-price");
  const addTax = document.getElementById("add-tax-price");
  const sum = document.getElementById("profit")
  price.addEventListener("keyup",()=>{
    addTax.innerHTML = `${price.value * 0.1}`
    sum.innerHTML = `${price.value - addTax.innerHTML}`
  })
}

window.addEventListener("load",price);