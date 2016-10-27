abstract class Page {
  
  int dimx = 1200, dimy = 800;
  int offb = Button.btnh;
  protected int[] bg = { 0,0,0 };
  Button prev = new Button(dimx - (offb * 6), dimy - (offb * 2), "Previous");
  Button next = new Button(dimx - (offb * 3), dimy - (offb * 2), "Next");
  
  void draw() {
    background(bg[0],bg[1],bg[2]);
    prev.draw();
    next.draw();
  }

}