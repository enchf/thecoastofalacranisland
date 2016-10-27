int page = 0;
boolean changed = true;

Page[] pages = {
  new FirstPage(),
  new SecondPage()
};

void setup() {
  size(1200,800);
  noLoop();
  pages[page].draw();
}

void draw() {
  checkClick(mouseX,mouseY);
  if (changed) pages[page].draw();
}

void checkClick(int x, int y) {
  int current = page;
  if (pages[page].prev.isClicked(x,y))      page = max(page - 1, 0);
  else if (pages[page].next.isClicked(x,y)) page = min(page + 1, pages.length - 1);
  changed = current != page;
}

void mousePressed() {
  redraw();
}