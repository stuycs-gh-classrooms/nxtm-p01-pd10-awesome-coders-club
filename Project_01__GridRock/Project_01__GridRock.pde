Ball[] balls;
Grid grid;
Paddle paddle;
boolean playing;
int lives;
boolean chaos;

void setup() {
  lives = 3;
  chaos=false;
  playing = true;
  size(510,500);
  balls = new Ball[5];
  grid = new Grid();
  paddle = new Paddle();
  balls[0] = new Ball();
  textAlign(LEFT,TOP);
  stroke(255);
  textSize(20);
}

void draw() {
  if(playing) {
   background(0);
  paddle.display();
  balls[0].display();
  balls[0].move();
  text("lives: "+lives,10,10);
  }
  if(lives==0) {
    trueReset();
  }
  grid.display();
}

void mouseClicked() {
  balls[0].onPaddle = false;
}

void keyPressed() {
  if(key=='p') {
    playing = !playing;
  }
  if(key=='r') {
    trueReset();
  }
  if(key=='t') {
    chaos=!chaos;
  }
}

void reset() {
  balls[0] = new Ball();
}

void trueReset() {
  balls[0] = new Ball();
  lives = 3;
}

