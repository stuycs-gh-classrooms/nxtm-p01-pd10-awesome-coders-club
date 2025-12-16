Ball[] balls;
Grid grid;
Paddle paddle;
boolean playing;
int lives;
boolean chaos;
int numBalls;
boolean won;
int timesWon;

void setup() {
  timesWon = 1;
  won = false;
  lives = 3;
  chaos=false;
  playing = true;
  size(510,500);
  balls = new Ball[50];
  grid = new Grid();
  paddle = new Paddle();
  balls[0] = new Ball();
  textAlign(LEFT);
  stroke(255);
  textSize(20);
  numBalls = 1;
}

void draw() {
  if(playing) {
   background(0);
  paddle.display();
  for(int i = 0;i<balls.length;i++) {
    if(!(balls[i]==null)) {
  balls[i].display();
    }
  }
  for(int i = 0;i<balls.length;i++) {
    if(!(balls[i]==null)) {
  balls[i].move();
    }
  }
  fill(255);
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
    text("click to continue",175,250);
    won = true;
  }
}

void mouseClicked() {
  for(int i = 0;i<balls.length;i++) {
    if(!(balls[i]==null)) {
  balls[i].onPaddle = false;
    }
  }
  if(won) {
      timesWon++;
    balls[0] = new Ball();
        for(int i = 0;i<balls.length;i++) {
    if(!(balls[i]==null)) {
      if(i>0) {
  balls[i] = null;
      }
    }
  }
  won = false;
  playing = true;
  grid = new Grid();

  }
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
    for(int i = 0;i<balls.length;i++) {
    if(!(balls[i]==null)) {
  balls[i].xspeed*=2;
    }
  }
      for(int i = 0;i<balls.length;i++) {
    if(!(balls[i]==null)) {
  balls[i].yspeed*=2;
    }
  }
  }
  if(key=='e') {
    for(int i = 0;i<balls.length;i++) {
    if(!(balls[i]==null)) {
  balls[i].xspeed*=0.5;
    }
  }
      for(int i = 0;i<balls.length;i++) {
    if(!(balls[i]==null)) {
  balls[i].yspeed*=0.5;
    }
  }
  }
  if(key=='g') {
    for(int i = 0;i<grid.numCols;i++) {
      for(int j = 0;j<grid.numRows;j++) {
        grid.grid[i][j].on = false;
      }
    }
  }
  if(key=='w') {
      for(int i = 0;i<balls.length;i++) {
    if(!(balls[i]==null)) {
  balls[i].xspeed*=0.8;
    }
  }
  }
  if(key=='s') {
      for(int i = 0;i<balls.length;i++) {
    if(!(balls[i]==null)) {
  balls[i].xspeed*=1.2;
    }
  }
  }
  if(key=='a') {
      for(int i = 0;i<balls.length;i++) {
    if(!(balls[i]==null)) {
  balls[i].yspeed*=1.2;
    }
  }
  }
  if(key=='d') {
      for(int i = 0;i<balls.length;i++) {
    if(!(balls[i]==null)) {
  balls[i].yspeed*=0.8;
    }
  }
  }
  if(key=='k') {
    balls[numBalls] = new Ball();
    numBalls++;
  }
}

void reset() {
  balls[0] = new Ball();
        for(int i = 0;i<balls.length;i++) {
    if(!(balls[i]==null)) {
      if(i>0) {
  balls[i] = null;
      }
    }
  }
}

void trueReset() {
  timesWon=1;
  playing = true;
  won = false;
  balls[0] = new Ball();
        for(int i = 0;i<balls.length;i++) {
    if(!(balls[i]==null)) {
      if(i>0) {
  balls[i] = null;
      }
    }
  }
  grid = new Grid();
  lives = 3;
  chaos = false;
}
