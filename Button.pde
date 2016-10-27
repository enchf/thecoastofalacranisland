class Button {
 
  static final int btnh = 48;
  static final int btnw = btnh * 2;
  static final int font = btnh / 4;
  
  int x, y;
  String label;
  
  /**
   * @param x Button upper left corner x-coordinate.
   * @param y Button upper left corner y-coordinate.
   */
  Button(int x, int y, String label) {
    this.x = x;
    this.y = y;
    this.label = label;
  }
  
  void draw() {
    stroke(255);
    fill(64);
    rect(x,y,btnw,btnh);
    fill(255);
    textSize(font);
    textAlign(CENTER,CENTER);
    text(label,x,y,btnw,btnh);
  }
  
  boolean isClicked(int x, int y) {
    return x >= this.x && y >= this.y && x <= this.x + btnw && y <= this.y + btnh;
  }
}
    