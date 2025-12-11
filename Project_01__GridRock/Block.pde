class Block
{
  
  PVector position; // for block placement
  boolean on; // changes block visability 
  
  Block(PVector place) {

    on = true;
    position = new PVector(place.x, place.y);
  

    on = true; // turns block on
    position = new PVector(place.x, place.y); // block location
  } // constructor

  
  Block() {
    this(new PVector(0,0));
  }
  
  void display() {
    fill(255);

    rect(position.x,position.y,40,40);
   // rect(position.x,position.y,50,50);
  }// displaying block

}
