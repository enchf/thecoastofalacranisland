abstract class Line {
  // Two PVectors,
  // a is the "left" PVector and 
  // b is the "right PVector
  PVector a;
  PVector b;
  
  Line(PVector start, PVector end) {
    a = start.copy();
    b = end.copy();
  }
  
  void display() {
    stroke(255);
    line(a.x, a.y, b.x, b.y);
  }
  
  PVector start() {
    return a.copy();
  }

  PVector end() {
    return b.copy();
  }
  
  abstract PVector[] divide(); 
}