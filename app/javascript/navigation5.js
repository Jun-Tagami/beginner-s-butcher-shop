window.addEventListener('load', () => {

  const pullDownButton = document.getElementById("detail5");
  const pullDownParents = document.getElementById("pulldown5");
  pullDownButton.addEventListener('click', () => {
    pullDownParents.setAttribute("style", "display:block;");
  })
  pullDownButton.addEventListener('mouseover', () => {
    pullDownParents.removeAttribute("style", "display:block;");
  })
});