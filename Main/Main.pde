void setup () {
  size(1920, 1080);
  //surface.setResizable(true);

  
}

GUI gui = new GUI();

void draw () {

    background(128);

    gui.Draw();



}

void mouseClicked() {
  gui.mouseClicked();
}

void mousePressed() {
  gui.mousePressed();
}

void mouseWheel() {
  gui.mouseWheel();
}

void mouseDragged() {
  gui.mouseDragged();
}
