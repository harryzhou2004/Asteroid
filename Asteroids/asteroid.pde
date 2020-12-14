class Asteroid extends GameObject {
  //1. instance: locationn, velocity, size, lives; use pvector


  //2. connstructors ranndom x annd t location for pvector, ranndom velocity constant speed for velocity pvector
  Asteroid() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(5), random(5));
    size = 300;
    lives = 1;
    velocity.rotate(random(TWO_PI));
  }
  
  Asteroid(float s, float x, float y) {
    lives = 1;
    location = new PVector(x, y);
    velocity = new PVector(random(5), random(5));
    velocity.rotate(random(TWO_PI));
    size = s;
    if(s <= 37.5) {
      lives = 0;
    }
  }


  //3. behaviour
  void show() {//looks
    super.show();

    //image(asteroid, location.x, location.y, size, size);
    stroke(255);
    strokeWeight(3);
    fill(0);
    rect(location.x, location.y, size, size);
  }

  void act() {//movement and screenn wrap
    super.act();
    velocity.setMag(2);
    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof Bullet) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) <= size/2 + obj.size) {
          obj.lives = 0;
          lives =0;
          score = score + 1;
          myObjects.add(new Asteroid(size/2, location.x, location.y));
          myObjects.add(new Asteroid(size/2, location.x, location.y));
          myObjects.add(new Particles(location.x, location.y));
          myObjects.add(new Particles(location.x, location.y));
          myObjects.add(new Particles(location.x, location.y));
          myObjects.add(new Particles(location.x, location.y));
          myObjects.add(new Particles(location.x, location.y));
        }
      }
      i++;
    }


    if (location.x>1425) location.x = -25;
    if (location.x<-25) location.x = 1425;
    if (location.y>1425) location.y = -25;
    if (location.y<-25) location.y = 1425;
  }
}
