class GUI {
    int GUIWidth, GUIHeight;
    int PanelWidth, PanelHeight;
    Panel panel;
    ArrayList<ButtonInterface> buttons;

    GUI() {
      GUIWidth = 1920;
      GUIHeight = 1080;
      PanelWidth = 1600;
      PanelHeight = 800;
      buttons = new ArrayList<ButtonInterface>();
      println(width, height);
      println(GUIWidth, GUIHeight);
      panel = new Panel((GUIWidth-PanelWidth)/2, 200, PanelWidth, PanelHeight);
      buttons.add(panel);
      buttons.add(new ButtonText("Start",     100, 80, 200, 100, 80));
      buttons.add(new ButtonText("Next",      500, 80, 200, 100, 80));
      buttons.add(new ButtonText("Continue",  900, 80, 400, 100, 80));
    }


    void Draw() {
      GUIWidth = width;
      GUIHeight = height;
      for (ButtonInterface b : buttons) {
        b.Draw();
      }

    }
    
    void mouseClicked() {
      int x = mouseX;
      int y = mouseY;
      //println("tried: " + x + ", " + y);
      for (ButtonInterface b : buttons) {
        if (b.ButtonContains(x, y)) {
          //println("clicked, %s, %s", x, y);
          b.ButtonClick(x, y);
        }
      }
    }
    
    void mousePressed() {
      
    }
    
    void mouseWheel() {
      
    }
    
    void mouseDragged() {
      
    }
    
    Object getButtonInteraction() {
      for (ButtonInterface b : buttons) {
        if (b.ButtonContains(mouseX, mouseY)) {
          return b;
        }
      }
      return null;
    }
    
    
    
}
