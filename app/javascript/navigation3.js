window.addEventListener('load', () => {

  const pullDownButton = document.getElementById("detail3");
  const pullDownParents = document.getElementById("pulldown3");
  pullDownButton.addEventListener('click', () => {
    pullDownParents.setAttribute("style", "display:block;");
  })
  pullDownButton.addEventListener('mouseover', () => {
    pullDownParents.removeAttribute("style", "display:block;");
  })
});