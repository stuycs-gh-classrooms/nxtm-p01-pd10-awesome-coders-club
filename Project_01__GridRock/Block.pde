class Block
{
  
  PVector position;
  boolean on;
  
  Block(PVector place) {
    on = true;
    position = new PVector(place.x, place.y);
  }
  
  Block() {
    
  }
  
  void display() {
    fill(255);
    rect(position.x,position.y,50,50);
  }
}
