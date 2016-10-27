class FifthPage extends Page {
  
  int font = 24;
  
  void draw() {
    super.draw();
    showLinks();
  }
  
  void showLinks() {
    String links = 
      "Complexity Explorer - Mellanie Mitchell, Dave Feldman\n" + 
      "Benoit Mandelbrot - The Fractal Nature of Geometry\n" + 
      "Daniel Shiffman - The Nature of Code (natureofcode.com)\n" + 
      "Stephen Wolfram - A New Kind of Science\n" +
      "github.com/enchf/thecoastofalacranisland"
    ;
    
    fill(255);
    textSize(font);
    textAlign(LEFT,CENTER);
    text(links, font, dimy / 2, dimx - (font * 2), dimy / 2);
  }
}