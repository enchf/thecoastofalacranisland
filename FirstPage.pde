class FirstPage extends Page {
  
  PShape islandShape;
  int fontSize = 24;
  
  int[][] island = {{386,360},{380,364},{384,375},
                    {407,383},{419,402},{419,448},
                    {431,460},{435,479},{445,479},
                    {445,487},{460,492},{466,507},
                    {522,533},{530,531},{539,534},
                    {548,532},{578,546},{605,545},
                    {638,559},{638,569},{645,577},
                    {675,590},{725,631},{765,642},
                    {837,643},{860,650},{919,641},
                    {1000,607},{997,598},{943,581},
                    {925,569},{696,501},{664,480},
                    {623,472},{609,460},{576,445},
                    {559,447},{536,440},{526,427},
                    {481,411},{476,402},{469,411},
                    {458,412},{430,385},{415,381},
                    {396,365},{386,360}};
                    
  {
    setBackground(new int[] { 163,204,255 });
  }
  
  void initShape() {
    if (islandShape == null) {
      islandShape = createShape();
      islandShape.beginShape();
      islandShape.fill(168,166,161);
      
      for (int i = 0; i < island.length; i++) {
        islandShape.vertex(island[i][0],island[i][1]);
      }
      
      islandShape.endShape(CLOSE);
    }
  }
  
  void draw() {
    super.draw();
    initShape();
    stroke(0);
    shape(islandShape,0,0);
    showName();
    showTitle();
  }
  
  void showTitle() {
    String name = "How long is the coast of E̶n̶g̶l̶a̶n̶d̶ La Isla de los Alacranes?";
    int size = 24;
    
    fill(0);
    textAlign(CENTER,CENTER);
    textSize(size);
    text(name, fontSize, fontSize * 6,size * name.length(), size * 2); 
  }
  
  void showName() {
    String name = "<ernesto.espinosa>";
    int x = fontSize;
    
    textSize(fontSize);
    
    for (int i = 0; i < name.length(); i++) {
      fill(i == 0 || i == name.length() - 1 ? 0 : 255);
      text(name.charAt(i), x, fontSize);
      x += fontSize;
    }
  }

}