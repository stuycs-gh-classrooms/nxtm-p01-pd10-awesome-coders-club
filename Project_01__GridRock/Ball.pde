class Ball 
{
  
  PVector position;
  int xspeed;
  int yspeed;
  boolean onPaddle;
  
  Ball(int x) {
    onPaddle = true;
    position = new PVector();
    position.x = 50;
    position.y = 421;
    xspeed = 1;
    yspeed = 1;
  }
  
  Ball() {
    this(paddle.x);
  }
  
  void display() {
    fill(255);
    circle(position.x,position.y,12);
  }
  
  void move() {
    if(onPaddle) {
      position.x = mouseX;
    }
    if(!onPaddle) {
      position.x+=xspeed;
      position.y+=yspeed;
    }
  }
}
