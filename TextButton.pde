class TextButton implements ButtonInterface {

  String text;
  TextButton (String t) {
    text = t;
  }

  void ButtonClick(){};
  void ButtonScroll(){};
  void ButtonHover(){};
  boolean ButtonContains(int x, int y){return false;};

}
