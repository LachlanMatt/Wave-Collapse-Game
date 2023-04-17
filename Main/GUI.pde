class GUI {
    int GUIWidth, GUIHeight;
    int PanelWidth, PanelHeight;
    Panel panel;
    ArrayList<ButtonInterface> buttons;

    GUI() {
        buttons = new ArrayList<ButtonInterface>();
        panel = new Panel(100, 200, 1600, 800);
        buttons.add(panel);
        buttons.add(new TextButton("Start",     100, 80, 200, 100, 80));
        buttons.add(new TextButton("Next",      500, 80, 200, 100, 80));
        buttons.add(new TextButton("Continue",  900, 80, 400, 100, 80));
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
