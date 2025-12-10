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
        grid[i][j] = new Block(new PVector(50*j+width/2-50*2,(50/2)+50*i));
        println(grid[i][j].position);
      }
    }
  } // to add to grid
} // grid
