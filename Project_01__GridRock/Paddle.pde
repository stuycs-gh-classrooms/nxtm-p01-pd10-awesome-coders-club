class Paddle
{
  int x;
  
  Paddle() {
    x = mouseX-30;
  }
  void display() {
    x = mouseX-30;
    fill(255);
    rect(x,430,60,5);
  }
}
