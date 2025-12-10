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
    xspeed = 10;
    yspeed = -10;
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
      if(chaos) {
      xspeed+=int(random(-5,5));
      yspeed+=int(random(-5,5));
      }
    }
    if(position.y-bsize/2<0) {
      yspeed*=-1;
      if(chaos) {
      yspeed+=int(random(-5,5));
      xspeed+=int(random(-5,5));
      }
    }
    if(position.y+bsize/2>435 &&
    position.y+bsize/2<445 &&
    position.x+bsize>mouseX-30 &&
    position.x-bsize<mouseX+30) {
      yspeed*=-1;
      if(chaos) {
      yspeed+=int(random(-5,5));
      xspeed+=int(random(-5,5));
      }
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
  boolean inContact(PVector ballP, PVector blockP) {
    if(ballP.x-blockP.x > (-1*bsize/2) &&
    ballP.x-blockP.x < bsize/2 &&
    ballP.y-blockP.y > (-1*bsize/2) &&
    ballP.y-blockP.y < bsize/2) {
      return true;
    }
   return false;
  }
}
