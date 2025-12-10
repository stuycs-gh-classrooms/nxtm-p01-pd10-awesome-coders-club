class Grid
{
  Block[][] grid; // grid for blocks (grid inside of a grid)
  // variables 
  int numRows; 
  int numCols; 
  
  Grid(int x, int y) {
    numRows = x;
    numCols = y;
    grid = new Block[y][x];
    populate();
  } //grid constructor 
  
  Grid() {
    this(10,5);
  } // overload (for default constructor)
  
  
  void populate() {
    for(int i = 0;i<numCols;i++) {
      for(int j = 0;j<numRows;j++) {
        grid[i][j] = new Block(new PVector(50*j+10,50*i+10));
        println(grid[i][j].position);
      }
    }
<<<<<<< HEAD
  }
  void display() {
    for(int i = 0;i<numCols;i++) {
      for(int j = 0;j<numRows;j++) {
        if(grid[i][j].on) {
          grid[i][j].display();
        }
      }
    }
  }
}
=======
  } // to add to grid
} // grid
>>>>>>> be7cfe4cfdd16e24c4472c18e9acd853d91e6c50
