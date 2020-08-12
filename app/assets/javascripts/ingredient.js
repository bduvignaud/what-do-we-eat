function addIngredients() {
  var ingredients_div = document.getElementById("ingredients")

  var input = document.createElement("input")
  input.setAttribute("type", "text")
  input.setAttribute("name", "ingredient[]")

  ingredients_div.appendChild(input)
}
