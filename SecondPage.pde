class SecondPage extends Page {
  
  int font = 24;
  
  void draw() {
    super.draw();
    showTitle();
    showDimensions();
    showLinks();
  }
  
  void showTitle() {
    fill(223);
    textSize(font);
    textAlign(LEFT,CENTER);
    text("Known Universe vs. Planck Constant", font/2, font/2, dimx - (font * 2), (font * 2));
  }
  
  void showDimensions() {
    int box = (dimx - (font * 2))/5;
    int y = font * 8;
    int x = font;
    String[] dims = {
      "Planck Constant: 1.6 x 10 ^ -35 mts",
      "Human beings: Around 1-2 mts",
      "Known Universe: 2.53 x 10 ^ 26 mts (13.8 billion years light radius)"
    };
    
    fill(255);
    textSize(font);
    textAlign(CENTER,CENTER);
    
    line( box    + font, (1.5 * y) + font, (box*2) + font, (1.5 * y) + font);
    line((box*3) + font, (1.5 * y) + font, (box*4) + font, (1.5 * y) + font);
    
    for (int i = 0; i < dims.length; i++) {
      text(dims[i], x, y, box, y);
      x += (box * 2);
    }
    
  }
  
  void showLinks() {
    String links = 
      "http://www.space.com/24073-how-big-is-the-universe.html\n" + 
      "http://www.livescience.com/23232-smallest-ingredients-universe-physics.html"
    ;
    
    fill(255);
    textSize(font);
    textAlign(LEFT,CENTER);
    text(links, font, dimy - (font * 9), dimx - (font * 2), (font * 4));
  }

}