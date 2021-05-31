window.addEventListener('load', () => {
  
  const pullDownButton = document.getElementById("detail");
  const pullDownParents = document.getElementById("pulldown");
  pullDownButton.addEventListener('mouseover', () => {
    pullDownParents.setAttribute("style", "display:block;");
  })
  pullDownButton.addEventListener('click', () => {
    pullDownParents.removeAttribute("style", "display:block;");
  })
});

