class Tile {

  Biome biome;
  Zoning zoning;
  Structure structure;
  PImage img;
  //Connection connectionUp, connectionDown, connectionLeft, connectionRight;
  Tile (PImage i) {
    biome = new Biome();
    zoning = new Zoning();
    structure = new Structure();
    img = i;
  }

  Tile (String path) {
    this(loadImage(path));
  }

  Tile () {
    this("images/tree_apple_80.png");
  }



  void Draw (int x, int y) {
    biome.Draw(x, y);
    zoning.Draw(x, y);
    structure.Draw(x, y);
      image(img, x, y);
  }
  
}
