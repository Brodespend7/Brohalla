// Ty Burbidge
Player p1,p2;
float x = 200;
float y = 100;
float velocityY = 0;
float accelerationX = 0;
float velocityX = 0;
float gravity = 0.4;
float bounce = -0.75; // Energy retained after floor collision (75%)
float radius = 25;
boolean ground = false;
boolean jump = false;

void setup() {
  size(displayWidth,displayHeight);
  frameRate (100);
  p1 = new Player();
  p2 = new Player();
}

void draw() {
  background(127);
  p1.display();
  p2.display();
  // gravity vertical
  if (ground == false) {
    velocityY += gravity;
  }
  velocityX += accelerationX;

  if (ground == true) {
    if (velocityX > 0 || velocityX < 0 ) {
      accelerationX = accelerationX/1.08;
      velocityX = velocityX/1.08;
    }
  }
  else if (ground == false) {
    if (velocityX > 0 || velocityX < 0 ) {
      accelerationX = accelerationX/1.02;
      velocityX = velocityX/1.02;
    }
  }
  // the jumping ability
  y += velocityY;
  x += velocityX/10;

  if (jump == true) {
    y = height - radius ;
  }


  // the collision factor with the ground
  if (y + radius > height-1) {
    ground = true;
  } else {
    ground = false;
  }


  if (ground) {
    jump = true;    // Snap to floor so it doesn't get stuck
  }
  
}

  


void keyPressed() {
if (accelerationX < 1 || accelerationX < -1 ) {
if (key == 'W' ||key == 'w' && jump == true) {
   velocityY = -10;
   jump = false;
   p1.move('W');
  }else if (key == 'S' ||key == 's') {
    p1.move('S');
  }else if (key == 'A' ||key == 'a') {
    accelerationX = -4;
    p1.move('A'); 
  }else if (key == 'D' ||key == 'd') {
    accelerationX = 4;
    p1.move('D');
  }
}
}
// TODO: ad a pause/start key
