class RandomRotator implements Rotator {
  
  int left, right;
  
  RandomRotator(int left, int right) {
    this.left = left;
    this.right = right;
  }
  
  float rotationAngle() {
    return -radians(random(this.left, this.right));
  }

}