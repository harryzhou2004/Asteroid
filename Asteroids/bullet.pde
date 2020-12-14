class Bullet extends GameObject{
  //instance
  int timer;

  //constructors
  Bullet() {
    timer = 60;
    location = new PVector(myShip.location.x, myShip.location.y);
    velocity = new PVector(myShip.direction.x, myShip.direction.y);
    size = 10;
    lives = 1;
    
  }

  //behaviour
  void act() {
    stroke(255);
    strokeWeight(3);
    fill(0);
    rect(location.x, location.y, size, size);
    velocity.setMag(20); //set magnitude of bullet
    if (location.x>width || location.x<0 || location.y>height || location.y<0) {
      lives = 0;
    }
  
    timer--;
    if (timer == 0) {
      lives = 0;
    }
    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof Ufo) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) <= size/2 + obj.size) {
          obj.lives = 0;
          myShip.lives = myShip.lives + 1;
          myObjects.add(new Particles(obj.location.x, obj.location.y));
          myObjects.add(new Particles(obj.location.x, obj.location.y));
          myObjects.add(new Particles(obj.location.x, obj.location.y));
          myObjects.add(new Particles(obj.location.x, obj.location.y));
          myObjects.add(new Particles(obj.location.x, obj.location.y));
        }
      }
      i++;
    }
  }
  
  void show() {
    super.act();
    stroke(255);
    noFill();
    ellipse(location.x, location.y, size, size);
  
  }
}
