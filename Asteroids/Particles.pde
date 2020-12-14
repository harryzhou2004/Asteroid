class Particles extends GameObject {
  int alpha;//value for transparency
  int i = 0;
  Particles(float x, float y) {
      location = new PVector(x, y); // or new PVector(myShip.location.x, myShip.location.y);
      velocity = new PVector(random(0, 5), random(0, 5));
      velocity.rotate(random(TWO_PI));
      velocity.setMag(10);
      size = 10;
      lives = 1;
      alpha = 255;
  }
  
  void show() {
    stroke(255, alpha);
    strokeWeight(3);
    fill(0, alpha);
    rect(location.x, location.y, size, size);
    alpha = alpha - 35;
    if (alpha <= 0) lives =0;
  }
  
  void act() {
    super.act();
  }
}
