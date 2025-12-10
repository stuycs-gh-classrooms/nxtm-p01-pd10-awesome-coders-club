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
        grid[i][j] = new Block(new PVector(50*j+width/2-50*2,(50/2)+50*i));
        println(grid[i][j].position);
      }
    }
  }
}
