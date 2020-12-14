class Spaceship extends GameObject { //class are always capitalized

  //1. innstannce variables

  PVector direction;
  PVector drag;
  int shotTimer, threshold;
  color spaceshipColor = #000000; 

  //2. constructors, what does the spaceship looks like when it is built for the very first time
  Spaceship() { //name must match the class and will be constructor including captial letter
    location = new PVector(width/2, height/2); //giving the pvector setup location
    velocity = new PVector(0, 0); //magnitude, amounnt it is moving by; PVector(xmovement, ymovement);
    direction = new PVector(0, -0.1);
    drag = new PVector(-0.015, 0);
    //vx = 0;
    //vy = 0;
    lives = 3;
    velocity.setMag(3);
    shotTimer = 0;
    threshold = 45 ;
    size = 50;
  }

  //3. Behaviour Functions; show what spaceship looks like and its actions
  void show() {
    pushMatrix();
    stroke(255);
    fill(spaceshipColor);
    translate(location.x, location.y);//go to location of pvector
    rotate(direction.heading()); //telling the vector to rotate to the heading in with amounnt of velocity
    //rect(0, 0, 50, 50);
    triangle(-15, -20, -15, 20 , 50, 0);
    popMatrix();
  }


  void act() {
    shotTimer++;
    if (akey) direction.rotate(radians(-5)); //raidians(anngle); it connverts anngle innto radian which processing use
    if (dkey) direction.rotate(radians(5));  // velocity.rotate() tells how much it is rotating

    if (wkey) {
      velocity.add(direction); //velocity is gained in the direction it is turning
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
    }


    location.add(velocity); //the channge in velocity cause change in location making it move 
    if (skey) velocity.sub(direction);

    if (spacekey && shotTimer >= threshold) {
      myObjects.add(new Bullet());
      shotTimer = 0;
    }

    if (location.x>1425) location.x = -25;
    if (location.x<-25) location.x = 1425;
    if (location.y>1425) location.y = -25;
    if (location.y<-25) location.y = 1425;

    if (velocity.mag()>5) velocity.setMag(5);
    if (velocity.mag()>1 && wkey == false && velocity.mag()>=0) velocity.setMag(velocity.mag()-0.020);

    int i = 0;
    cooldown++;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof Asteroid && cooldown>120) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) <= size/2 + obj.size) {
          println("hi");
          lives = lives - 1;
          cooldown = 0;
        }
      }
      i++;
    }
    
    if (cooldown<150) {
      spaceshipColor = #B90202;
    } else {
      spaceshipColor = #000000;
    }
    
    if (lives == 0) {
      mode = GAMEOVER;
    }
    
   
  }
}
