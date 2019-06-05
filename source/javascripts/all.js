var fallingGuys = document.querySelectorAll(".falling-guy");

[].forEach.call(fallingGuys, function(guy) {
  guy.addEventListener("mouseover", function(e) {
    e.target.setAttribute("data-fallen", "true");
  });
});
