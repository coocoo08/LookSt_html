window.addEventListener("load", function() {
  const tagList = document.querySelectorAll(".page > p");
  for (let i = 0; i < tagList.length; i++) {
    tagList[i].addEventListener("click", function() {
      clearPage();
      this.classList.add("checkpage");
    });
  }

  function clearPage() {

    for (let i = 0; i < tagList.length; i++) {
      tagList[i].classList.remove("checkpage");
    }
  }
});


