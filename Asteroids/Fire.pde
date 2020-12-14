class Fire extends GameObject {

  int alpha;//value for transparency
  
  Fire() {
    location = myShip.location.copy(); // or new PVector(myShip.location.x, myShip.location.y);
    velocity = myShip.direction.copy(); //new PVector(myShip.direction.x, myShip.direction.y);
    velocity.rotate(radians(180) + random(-0.40, 0.40));
    velocity.setMag(10);
    size = 10;
    lives = 1;
    alpha = 255;
  }

  void show () {
    stroke(255, alpha);
    strokeWeight(3);
    fill(0, alpha);
    rect(location.x, location.y, size, size);
    alpha = alpha - 35;
    if (alpha <= 0) lives =0;
  }
  
  void act () {
    location.add(velocity);
  }
  
}
