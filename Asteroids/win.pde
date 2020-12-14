void win() {
  background(0);
  fill(255);
  textSize(90);
  text("YOU ACTUALLY WON ;(", 750, 500);
  textSize(70);
  text("do it again...", 750, 700);
  button(700, 900, 175, 100, "BACK");
}

void winClicks() {
  if (buttonPressed(700, 900, 175, 100)) {
    setup();
  }

}
