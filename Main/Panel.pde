class Panel implements ButtonInterface {

    int PanelScale = 1;
    int unitsize = 80;
    int PanelX, PanelY, PanelWidth, PanelHeight;

    Panel (int x, int y, int w, int h) {
      PanelX = x;
      PanelY = y;
        PanelWidth = w;
        PanelHeight = h;
    }


    void Draw () {
      Draw(PanelX, PanelY, PanelWidth, PanelHeight);
    }

    void Draw(int x, int y) {
        Draw(x, y, PanelWidth, PanelHeight);
    }

    void Draw(int x, int y, int w, int h) {
        strokeWeight(10);
        rect(x, y, w, h);

        strokeWeight(1);
        Tile tile = new Tile();


        for (int i = 0; i < w; i+=unitsize) {
            for (int j = 0; j < h; j+=unitsize) {
                rect(x+i, y+j, unitsize, unitsize);
                tile.Draw(x+i, y+j);
                //resize(0, unitsize/PanelScale).
            }
        }
    }
    
  void ButtonClick(int x, int y){};
  void ButtonScroll(int x, int y){};
  void ButtonHover(int x, int y){};
  boolean ButtonContains(int x, int y) { 
    return x>PanelX && x < PanelX+PanelWidth && y > PanelY && y < PanelY+PanelHeight;
  };
  
}
