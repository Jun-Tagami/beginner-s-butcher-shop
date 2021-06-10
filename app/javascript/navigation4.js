window.addEventListener('load', () => {
  
  const pullDownButton = document.getElementById("detail4");
  const pullDownParents = document.getElementById("pulldown4");
  pullDownButton.addEventListener('click', () => {
    pullDownParents.setAttribute("style", "display:block;");
  })
  pullDownButton.addEventListener('mouseover', () => {
    pullDownParents.removeAttribute("style", "display:block;");
  })

});