
//buttonn function
void button(int x, int y, int w, int h, String label) {

  if (mouseX>x-w/2 && mouseX < x+w/2 && mouseY < y+h/2 && mouseY > y-h/2) {
    strokeWeight(5);
    stroke(150, 150, 250);
  } else {
    strokeWeight(51);
    stroke(20);
  }

  fill(0);  
  rect(x, y, w, h);

  fill(255);  
  textSize(50);
  text(label, x, y);
}

boolean buttonPressed(int x, int y, int w, int h) {
  return (mouseX>x-w/2 && mouseX < x+w/2 && mouseY < y+h/2 && mouseY > y-h/2);
}

void button(int x, int y, int w, int h, String label, color f, color s) {

  if (mouseX>x-w/2 && mouseX < x+w/2 && mouseY < y+h/2 && mouseY > y-h/2) {
    strokeWeight(10);
    stroke(150, 150, 250);
  } else {
    strokeWeight(1);
    stroke(0);
  }
  fill(s);
  stroke(s);
  rect(x, y, w, h);
  fill(150);
  textSize(50);
  text(label, x, y);
}

boolean buttonPressed(int x, int y, int w, int h, color f, color s) {
  return (mouseX>x-w/2 && mouseX < x+w/2 && mouseY < y+h/2 && mouseY > y-h/2);
}
