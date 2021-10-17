window.addEventListener('load', () => {

  const pullDownButton = document.getElementById("detail2");
  const pullDownParents = document.getElementById("pulldown2");
  pullDownButton.addEventListener('mouseover', () => {
    pullDownParents.setAttribute("style", "display:block;");
  })
  pullDownButton.addEventListener('click', () => {
    pullDownParents.removeAttribute("style", "display:block;");
  })
});