
void intro() {
  
  background(0);
  
  color green = #00FF00;
  color black = #AAAAAA;
  
  //drawing button
  fill(255);
  textSize(120);
  text("THE ASTEROID GAME", 700, 350);
  button(700, 850, 200, 100, "START"); 
  button(700, 995, 200, 100, "QUIT");
}

void introClicks() {
   if (buttonPressed(700, 850, 200, 100)) {
    mode = GAME;
  }
  if (buttonPressed(700, 995, 200, 100)) {
    exit();
  }
}
