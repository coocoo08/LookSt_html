function clickBtn() {
  let _buttonI = event.target;

  if (_buttonI.classList.contains("far")) {
    _buttonI.classList.add("fas");
    _buttonI.classList.add("active");
    _buttonI.classList.remove("far");
  } else {
    _buttonI.classList.remove("fas");
    _buttonI.classList.remove("active");
    _buttonI.classList.add("far");
  }
}
