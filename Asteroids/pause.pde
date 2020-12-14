void pause() {
  background(150, 150, 150);
  button(400, 400, 150, 100, "BACK");
}

void pauseClicks() {
  if (buttonPressed(400, 400, 100, 100)) {
    mode = GAME;
  }
}
