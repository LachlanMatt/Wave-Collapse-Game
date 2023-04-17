interface ButtonInterface {
  
  //int buttonx = 0, buttony = 0, buttonwidth = 0, buttonheight = 0;
  void Draw();
  void ButtonClick(int x, int y);
  void ButtonScroll(int x, int y);
  void ButtonHover(int x, int y);
  boolean ButtonContains(int x, int y);
  
}
