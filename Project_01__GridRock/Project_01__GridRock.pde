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
  textAlign(LEFT);
  stroke(255);
  textSize(20);
}

void draw() {
  if(playing) {
   background(0);
  paddle.display();
  balls[0].display();
  balls[0].move();
  text("lives: "+lives,10,height-10);
  }
  if(lives==0) {
    trueReset();
  }
  grid.display();
  if(grid.empty()) {
    playing = false;
    textSize(50);
    text("YOU WIN!",155,200);
    textSize(20);
  }
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
  if(key=='q') {
    balls[0].xspeed*=1.5;
    balls[0].yspeed*=1.5;
  }
  if(key=='e') {
    balls[0].xspeed*=0.75;
    balls[0].xspeed*=0.5;
  }
  if(key=='g') {
    for(int i = 0;i<grid.numCols;i++) {
      for(int j = 0;j<grid.numRows;j++) {
        grid.grid[i][j].on = false;
      }
    }
  }
}

void reset() {
  balls[0] = new Ball();
}

void trueReset() {
  playing = true;
  balls[0] = new Ball();
  grid = new Grid();
  lives = 3;
  chaos = false;
  balls[0].xspeed = 5;
  balls[0].yspeed = -5;
}
