window.addEventListener('load', () => {
  
  const pullDownButton = document.getElementById("detail");
  const pullDownParents = document.getElementById("pulldown");
  pullDownButton.addEventListener('click', () => {
    pullDownParents.setAttribute("style", "display:block;");
  })
  pullDownButton.addEventListener('mouseover', () => {
    pullDownParents.removeAttribute("style", "display:block;");
  })

});
