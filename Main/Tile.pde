class Tile {

   PImage img;
   //Connection connectionUp, connectionDown, connectionLeft, connectionRight;
   Tile () {
     img = loadImage("images/tree_apple_80.png");
   }
  
  
  void Draw (int x, int y) {
     image(img, x, y);
  }
  
}