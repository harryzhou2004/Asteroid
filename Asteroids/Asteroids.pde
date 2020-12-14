int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int WIN = 5;
int ufoCount = 0;
float mag = 3;
boolean wkey, akey, skey, dkey, spacekey;
int score;
Spaceship myShip; //a global variable for spaceship class; Classname variablename
Asteroid myAsteroid;
Ufo myUfo;
ArrayList<GameObject> myObjects; //
int cooldown = 100;
int ufoCountdown;
int ufoShoot;

void setup() {
  size(1400, 1400);
  mode = INTRO;
  rectMode(CENTER);
  textAlign(CENTER, CENTER); //cennter vertically and horizonntally
  wkey = akey = skey = dkey = spacekey = false; //this make sure none of the key is pressed at the beginning when we setup the program
  myShip = new Spaceship(); //the variable builds the spaceship class, but no behaviour or act yet
  myObjects = new ArrayList<GameObject>();
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(myShip);
  ufoCountdown = 0;
  score = 0;
  myShip.lives = 3;
}

void draw() {
  //println(ufoCountdown);
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == WIN){ 
    win();
  } else {
    println("ERROR Mode is" + mode);
  }
}
