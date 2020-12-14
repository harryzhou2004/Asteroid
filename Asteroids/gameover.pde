void gameover() {
  background(0);
  fill(255);
  textSize(90);
  text("WHAT A LOSER ;(", 750, 500);
  textSize(70);
  text("you have lost...", 750, 700);
  button(700, 900, 175, 100, "BACK");
}

void gameoverClicks() {
  if (buttonPressed(700, 900, 175, 100)) {
    setup();
  }

}
