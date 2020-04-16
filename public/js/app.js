document.addEventListener("DOMContentLoaded", function () {
  document.querySelectorAll("img").forEach(function (element) {
    element.addEventListener("click", function (event) {
      document.getElementById("content").classList.toggle("fullscreen");
      event.target.parentElement.classList.toggle("fullscreen");
      // document.documentElement.requestFullscreen();
    });
  });
});
