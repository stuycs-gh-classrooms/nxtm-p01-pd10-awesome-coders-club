Ball[] balls;
Grid grid;
Paddle paddle;
boolean playing;
int lives;

void setup() {
  lives = 3;
  playing = true;
  size(500,500);
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
}

void reset() {
  balls[0] = new Ball();
}

void trueReset() {
  balls[0] = new Ball();
  lives = 3;
}


/* known bugs:
if you move the paddle over the ball as it's falling past it will get stuck until
you move the paddle away
  -if I decrease the interval for paddle bounce detection, it will go through the 
      paddle at higher speeds, but the larger the interval the easier it is to
      activate
  -borderline impossible to activate at 5 and higher speed though
  -tried solving, put off for now
not really a bug but the ball starts moving left at the start of the game
if the xspeed is positive and right if it's negative...
no freaking clue what causes this...
ok even weirder if you make a new ball it goes normal...
*/
