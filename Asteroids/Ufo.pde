class Ufo extends GameObject {

  //instance
  

  //constructor
  Ufo () {
    location = new PVector(random(width), 10);
    velocity = new PVector(myShip.location.x, myShip.location.y);
    size = 100;
    lives = 1;
    velocity.setMag(3);
  }

  //behviour
  void act() {
    location.add(velocity);
    
    ufoShoot++;
    if (ufoShoot++ > 180) {
      myObjects.add(new ufoBullet(location.x, location.y));
      ufoShoot = 0;
    }

    if (location.x>width || location.x<0 || location.y>height || location.y<0) {
      lives = 0;
    }
  }

  void show() {
    
    pushMatrix();
    fill(0);
    strokeWeight(3);
    stroke(255);
    translate(location.x, location.y);
    ellipse(0, -10, 30, 30);
    ellipse(0, 0, 80, 20);
    line(0, -25, 0, -40);
    ellipse(0, -41, 3, 3);
    popMatrix();
  }
}
