class Block
{
  
  PVector position; // for block placement
  boolean on; // changes block visability 
  
  Block(PVector place) {
<<<<<<< HEAD
    on = true;
    position = new PVector(place.x-20, place.y-20);
  }
=======
    on = true; // turns block on
    position = new PVector(place.x, place.y); // block location
  } // constructor
>>>>>>> be7cfe4cfdd16e24c4472c18e9acd853d91e6c50
  
  Block() {
    this(new PVector(0,0));
  }
  
  void display() {
    fill(255);
<<<<<<< HEAD
    rect(position.x+20,position.y+20,40,40);
  }
=======
    rect(position.x,position.y,50,50);
  }// displaying block
>>>>>>> be7cfe4cfdd16e24c4472c18e9acd853d91e6c50
}
