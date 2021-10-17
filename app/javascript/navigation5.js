window.addEventListener('load', () => {

  const pullDownButton = document.getElementById("detail5");
  const pullDownParents = document.getElementById("pulldown5");
  pullDownButton.addEventListener('mouseover', () => {
    pullDownParents.setAttribute("style", "display:block;");
  })
  pullDownButton.addEventListener('click', () => {
    pullDownParents.removeAttribute("style", "display:block;");
  })
});