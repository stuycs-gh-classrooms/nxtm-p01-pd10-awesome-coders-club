Ball[] balls;
Grid grid;
Paddle paddle;

void setup() {
  size(500,500);
  balls = new Ball[5];
  grid = new Grid();
  paddle = new Paddle();
  balls[0] = new Ball();
}

void draw() {
   background(0);
  paddle.display();
}
