function addTags() {
  var tags_div = document.getElementById("tags")

  var input = document.createElement("input")
  input.setAttribute("type", "text")
  input.setAttribute("name", "tag[]")
  input.setAttribute("value", "")
  input.setAttribute("data-autocomplete", "/recipes/autocomplete_tag_name")
  input.setAttribute("class", "ui-autocomplete-input")
  input.setAttribute("autocomplete", "off")

  tags_div.appendChild(input)
}
