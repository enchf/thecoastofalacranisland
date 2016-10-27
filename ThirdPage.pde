class ThirdPage extends Page {
  
  KochFractal k;
  int offset = 150;
  int offtxt = 50;
  
  {
    k = new KochFractal(offset, 10 + (dimy / 3), dimx - offset, 10 + (dimy / 3));
  }
  
  void draw() {
    super.draw();
    showLabels();
    k.render();
    // Iterate
    k.nextLevel();
    // Let's not do it more than 5 times. . .
    if (k.getCount() > 5) {
      k.restart();
    }
  }
  
  void showLabels() {
    String labels = "Topological Dimension = 1\n" + 
                  "Fractal Dimension = 4 / 3, Length is increased by 1/3 each iteration.\n" +
                  "Length tends towards Infinity";
    fill(255);
    textSize(24);
    textAlign(LEFT,CENTER);
    text(labels, offtxt, dimy - (offset*2), dimx - offtxt, offset); 
  }
}