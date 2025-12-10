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
    fill(255); // paddle color
    rect(x,430,60,5);
    // y does not change, only x

  }
} //paddle class
