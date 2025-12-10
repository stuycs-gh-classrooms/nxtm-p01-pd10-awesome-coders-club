class Ball 
{
  
  PVector position;
  float xspeed;
  float yspeed;
  boolean onPaddle;
  int bsize;
  
  Ball(int x) {
    onPaddle = true;
    position = new PVector();
    position.x = mouseX;
    position.y = 420;
    xspeed = 1;
    yspeed = -1;
    bsize = 24;
  }
  
  Ball() {
    this(paddle.x);
  }
  
  void display() {
    fill(255);
    circle(position.x,position.y,bsize/2);
  }
  
  void move() {
    if(position.x-bsize/2<0 || position.x+bsize/2>width) {
      xspeed*=-1;
    }
    if(position.y-bsize/2<0) {
      yspeed*=-1;
    }
    if(position.y+bsize/2>435 &&
    position.y+bsize/2<445 &&
    position.x+bsize>mouseX-30 &&
    position.x-bsize<mouseX+30) {
      yspeed*=-1;
    }
    if(onPaddle) {
      position.x = mouseX;
    }
    if(!onPaddle) {
      position.x+=xspeed;
      position.y+=yspeed;
    }
    if(position.y>height) {
      reset();
      lives-=1;
    }
  }
}
