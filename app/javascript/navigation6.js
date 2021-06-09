window.addEventListener('load', () => {

  const pullDownButton = document.getElementById("detail6");
  const pullDownParents = document.getElementById("pulldown6");
  pullDownButton.addEventListener('click', () => {
    pullDownParents.setAttribute("style", "display:block;");
  })
  pullDownButton.addEventListener('mouseover', () => {
    pullDownParents.removeAttribute("style", "display:block;");
  })
});