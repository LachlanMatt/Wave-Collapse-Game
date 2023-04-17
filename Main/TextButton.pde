class TextButton implements ButtonInterface {

  String text;
  int buttonx, buttony, buttonw, buttonh, textsize;
  TextButton (String t, int x, int y, int w, int h, int s) {
    text = t;
    buttonx = x;
    buttony = y;
    buttonw = w;
    buttonh = h;
    textsize = s;
  }

  void Draw () {
    strokeWeight(4);
    fill(255);
    rect(buttonx, buttony, buttonw, buttonh);
    fill(0);
    textSize(textsize);
    text(text, buttonx, buttony+10, buttonw, buttonh);

  }

  void ButtonClick(int x, int y){};
  void ButtonScroll(int x, int y){};
  void ButtonHover(int x, int y){};
  boolean ButtonContains(int x, int y) { 
    return x>buttonx && x < buttonx+buttonw && y > buttony && y < buttony+buttonh;
  };

}
