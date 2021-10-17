window.addEventListener('load', () => {

  const pullDownButton = document.getElementById("detail6");
  const pullDownParents = document.getElementById("pulldown6");
  pullDownButton.addEventListener('mouseover', () => {
    pullDownParents.setAttribute("style", "display:block;");
  })
  pullDownButton.addEventListener('click', () => {
    pullDownParents.removeAttribute("style", "display:block;");
  })
});