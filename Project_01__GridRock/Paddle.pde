class Paddle
{
  // variables
  int x; // x-coord of the paddle
  
  Paddle() {
    x = mouseX-30;
  }
  void display() {
    if(playing) {
    x = mouseX-30; 
    }
    // paddle moves with mouse
//    fill(255); // paddle color
//    rect(x,430,60,5);
 fill(220,40,40);
  stroke(220,40,40);
  rect(x, 430, 70, 10, 30, 5, 3, 1000);
  rect(x+5, 430-3, 30, 10, 30, 5, 100, 5);
  circle(x-5,430+2,15);
  rect(x+70,430-5,3,15);
  fill(255);
 // stroke(255);
    // y does not change, only x

  }
} //paddle class
