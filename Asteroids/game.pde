void game() {
  background(0);
  textSize(45);
  fill(255);
  text("SCORE:" + score, 120, 50);
  if (score == 21) {
    mode = GAMEOVER;
    score = 0;
    //myObjects.lives = 0;
    myShip.lives = 3;
    //myObjects.lives = 1;
    myObjects.add(new Asteroid(300, random(width), random(height)));
    myObjects.add(new Asteroid(300, random(width), random(height)));
    myObjects.add(new Asteroid(300, random(width), random(height)));
  }

  ufoCountdown++;
  if (ufoCountdown > 500) {
    myObjects.add(new Ufo());
    ufoCountdown = 0;
  }

  text("LIVES:" + myShip.lives, 120, 100);

  //int timer = 600;
  //while(timer > 0) {
  //  timer = timer - 1;
  //}

  //println(myObjects.size());
  int i = 0; //countinng variable, count the number off bullets; start with bullet 0; i is reset to 0 per loop so while loop is always tru
  while (i < myObjects.size()) {
    //do something with the current bullet
    GameObject obj = myObjects.get(i);
    obj.act();
    obj.show();
    //i++; //go to the next bullet; 1 is added to the i so i becomes 1 instead of 0
    if (obj.lives == 0) {
      myObjects.remove(i);
    } else {
      i++;
    }
  }
  if (asteroidCount() == 0) {
    mode = WIN;
  }
}

void gameClicks() {
  if (buttonPressed(100, 100, 170, 80)) {
    mode = PAUSE;
  }
  if (buttonPressed(400, 400, 110, 100)) {
    mode = GAMEOVER;
  }
}

int asteroidCount() {
   int count = 0;
   for (GameObject obj: myObjects) 
     if (obj instanceof Asteroid) count++;
   return count;
}
