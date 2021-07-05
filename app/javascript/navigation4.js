window.addEventListener('load', () => {
  
  const pullDownButton = document.getElementById("detail4");
  const pullDownParents = document.getElementById("pulldown4");
  pullDownButton.addEventListener('mouseover', () => {
    pullDownParents.setAttribute("style", "display:block;");
  })
  pullDownButton.addEventListener('click', () => {
    pullDownParents.removeAttribute("style", "display:block;");
  })
});