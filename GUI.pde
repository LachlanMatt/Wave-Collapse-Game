class GUI {
    int GUIWidth, GUIHeight;
    int PanelWidth, PanelHeight;
    Panel panel;
    ArrayList<ButtonInterface> buttons;

    GUI() {
        buttons = new ArrayList<ButtonInterface>();
        panel = new Panel(1600, 800);
        buttons.add(panel);
    }


    void Draw() {
        GUIWidth = width;
        GUIHeight = height;
    
        panel.Draw(100, 200);

    }
    
    void mouseClicked() {
      
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
