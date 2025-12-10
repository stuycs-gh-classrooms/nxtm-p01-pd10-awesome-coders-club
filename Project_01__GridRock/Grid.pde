class Grid
{
  Block[][] grid;
  int numRows;
  int numCols;
  
  Grid(int x, int y) {
    numRows = x;
    numCols = y;
    grid = new Block[y][x];
    populate();
  }
  
  Grid() {
    this(10,5);
  }
  
  
  void populate() {
    for(int i = 0;i<numCols;i++) {
      for(int j = 0;j<numRows;j++) {
        grid[i][j] = new Block(new PVector(50*j+10,50*i+10));
        println(grid[i][j].position);
      }
    }
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
