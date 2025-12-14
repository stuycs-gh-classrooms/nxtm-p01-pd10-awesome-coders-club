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
  //  fill(255);
line(position.x-10,position.y-40,position.x-5,position.y-20);
    line(position.x+10,position.y-40,position.x+5,position.y-20);
    fill(124,64,0);
    ellipse(position.x,position.y,30,60);
    line(position.x,position.y+30,position.x,position.y-10);
    line(position.x-15,position.y-10,position.x+15,position.y-10);
    line(position.x-15,position.y-10,position.x-30,position.y-15);
    line(position.x+15,position.y-10,position.x+30,position.y-15);
    line(position.x-30,position.y,position.x-15,position.y);
    line(position.x+30,position.y,position.x+15,position.y);
    line(position.x-15,position.y+10,position.x-30,position.y+15);
    line(position.x+15,position.y+10,position.x+30,position.y+15);
  //  rect(position.x,position.y,40,40);
   // rect(position.x,position.y,50,50);
  }// displaying block

}
