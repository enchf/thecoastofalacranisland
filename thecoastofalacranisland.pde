int page = 0;
boolean changed = true;
boolean overNext = false, overPrev = false;

Page[] pages = {
  new FirstPage(),
  new SecondPage(),
  new ThirdPage()
};

void setup() {
  size(1200,800);
  frameRate(1);  // Animate slowly
}

void draw() {
  checkClick(mouseX, mouseY);
  pages[page].draw();
}

void checkClick(int x, int y) {
  overNext = pages[page].next.isClicked(x,y);
  overPrev = pages[page].prev.isClicked(x,y);
}

void mousePressed() {
  if (overNext) page = min(page + 1, pages.length - 1);
  if (overPrev) page = max(page - 1, 0);
}