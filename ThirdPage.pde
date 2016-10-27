class ThirdPage extends Page {
  
  KochFractal k;
  int offset = 50;
  
  {
    k = new KochFractal(offset, dimy / 2, dimx - offset, dimy / 2);
  }
  
  void draw() {
    super.draw();
    k.render();
    // Iterate
    k.nextLevel();
    // Let's not do it more than 5 times. . .
    if (k.getCount() > 5) {
      k.restart();
    }
  }
}