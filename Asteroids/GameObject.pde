class GameObject {
 
  PVector location; //two coordinnates under the same name, location have a x and y value
  PVector velocity; // x and y aspect of velocity
  float size;
  int lives;

  GameObject() {
    
  }
  
  void show () {
    stroke(255);
    strokeWeight(3);
    fill(0);
    rect(location.x, location.y, size, size);
  }

  void act () {
    location.add(velocity);
    
  }

}
