class Block
{
  
  PVector position;
  boolean on;
  
  Block(PVector place) {
    on = true;
    position = new PVector(place.x-20, place.y-20);
  }
  
  Block() {
    this(new PVector(0,0));
  }
  
  void display() {
    fill(255);
    rect(position.x+20,position.y+20,40,40);
  }
}
