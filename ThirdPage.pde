class ThirdPage extends Page {
  
  KochFractal k;
  
  {
    k = new KochFractal();
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