class FourthPage extends Page {
  
  PShape islandShape;
  int fontSize = 24;
  KochFractal[] island;
  int offlbl = 150;
  
  int[][] getIslandShape() {
    return new int[][]
           {{388,359},{421,447},{511,526},
            {610,546},{727,630},{879,650},
            {1000,601},{927,568},{734,509},
            {578,444},{470,414},{388,359},
            };
  }
  
  {
    int[][] shape = getIslandShape();
    Rotator r = new RandomRotator(60, 120);
    int[] source, dest;
    
    setBackground(new int[] { 163,204,255 });
    island = new KochFractal[shape.length];
    
    for (int i = 0; i < shape.length; i++) {
      source = shape[i];
      dest   = shape[(i+1) % shape.length];
      island[i] = new KochFractal(source[0],source[1],dest[0],dest[1]);
      island[i].setRotator(r);
    }
  }
  
  void draw() {
    float distance = 0.0;
    super.draw();
    for (KochFractal k : island) {
      k.render();
      // Iterate
      k.nextLevel();
      distance += k.distance();
      // Let's not do it more than 5 times. . .
      if (k.getCount() > 5) {
        k.restart();
      }
    }
    showDistance(distance);
  }
  
  void showDistance(float distance) {
    fill(0);
    textSize(36);
    textAlign(LEFT, CENTER);
    text(String.format("Distance: %.4f", distance), dimx - (2 * offlbl), offlbl, offlbl * 2, offlbl);
  }
  
}