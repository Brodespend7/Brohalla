// Draycen Worthington

class Player {
  // Member Variable
  int x,y,w,h,health;
  color c1;
  PImage p1;
  PImage p2;

  // Constructor
Player() {
  x = 50;
  y = 50;
  w = 50;
  h = 50;
  health = 100;
  c1 = color(244,55,77);
  p1 = loadImage("");
  p2 = loadImage("");
  }  

  // Member Methods
  
  void display() {}
  void move(char dir) {
if (dir == 'w' || dir == 'W') {
y -= speed;
} else if (dir == 's' || dir == 'S') {
y += speed;
} else if (dir == 'a' || dir == 'A') {
x -= speed;
} else if (dir == 'd' || dir == 'D') {
x += speed;
}
  }
  void jump() {}
  void fire() {}





}
