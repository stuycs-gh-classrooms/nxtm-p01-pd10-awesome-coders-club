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
    xspeed = 0+2*timesWon;
    yspeed = -2-2*timesWon;
    bsize = 24;
  }
  
  Ball() {
    this(paddle.x);
  }
  
  void display() {
    stroke(255);
  //  fill(255);
   // circle(position.x,position.y,bsize/2);
    fill(0);
    rect(position.x,position.y-15,20,35,40,40,5,20);
    fill(255,255,0); 
    rect(position.x,position.y, 20, 40);
    fill(255,30,30);
    rect(position.x,position.y+5,20,20);
    fill(255,255,0);
    textSize(10);
    text("RAID", position.x, position.y+15);
    
  }
  
  void move() {
    for(int i = 0;i<grid.numCols;i++) {
      for(int j = 0;j<grid.numRows;j++) {
        if(inContactX(position,grid.grid[i][j].position) &&
        inContactY(position,grid.grid[i][j].position)) {
          if(grid.grid[i][j].on) {
            grid.grid[i][j].on = false;
          if(position.x<grid.grid[i][j].position.x ||
          position.x>grid.grid[i][j].position.x+40) {
          xspeed*=-1;
          if(chaos) {
      xspeed+=int(random(-5,5));
      yspeed+=int(random(-5,5));
      }
          }
          if(position.y<grid.grid[i][j].position.y ||
          position.y>grid.grid[i][j].position.y+40) {
            yspeed*=-1;
            if(chaos) {
      xspeed+=int(random(-5,5));
      yspeed+=int(random(-5,5));
      }
          }
          }
        }
      }
    }
    
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
    position.y+bsize/2<435+abs(yspeed)*2 &&
    position.x+bsize>mouseX-30 &&
    position.x-bsize<mouseX+30) {
      yspeed*=-1;
      if(xspeed>0) {
        if(position.x<mouseX) {
          xspeed*=-1;
        }
      }
      if(xspeed<0) {
        if(position.x>mouseX) {
          xspeed*=-1;
        }
      }
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
  boolean inContactY(PVector ballP, PVector blockP) {
    if(ballP.y-blockP.y > (-1*bsize/2) &&
    ballP.y-(blockP.y+40) < bsize/2) {
      return true;
    }
   return false;
  }
  
  boolean inContactX(PVector ballP, PVector blockP) {
    if(ballP.x-(blockP.x+40) < bsize/2 &&
    ballP.x-blockP.x > (-1*bsize/2)) {
    return true;
  }
  return false;
}
}
