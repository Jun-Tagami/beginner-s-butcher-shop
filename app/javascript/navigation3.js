window.addEventListener('load', () => {

  const pullDownButton = document.getElementById("detail3");
  const pullDownParents = document.getElementById("pulldown3");
  pullDownButton.addEventListener('mouseover', () => {
    pullDownParents.setAttribute("style", "display:block;");
  })
  pullDownButton.addEventListener('click', () => {
    pullDownParents.removeAttribute("style", "display:block;");
  })
});