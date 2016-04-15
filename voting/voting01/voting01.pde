void setup() {
  size(500, 500);
  background(50);
}

void draw() {
  background(50);
  aticleTextPanelPool(100, 100);
}


void  aticleTextPanelPool(int _posX, int _posY){
  int posX = _posX;
  int posY = _posY;
  int distX = 20;
  int distY = 20;
  int botW = 15;
  int botH = 10;
  fill(200);
  textAlign(LEFT, TOP);
  noStroke();
  //QUESTION 1
  textSize(12);
  text("What is your sensation", posX, posY);
  //OPTIONS 1
    rect(posX, posY+2+distY, botW, botH);
      text("Do you like it", posX+distX, posY+distY);
    rect(posX, posY+2+distY*2, botW, botH);
      text("Do you hate it", posX+distX, posY+distY*2);
    rect(posX, posY+2+distY*3, botW, botH);
      text("Indiferent", posX+distX, posY+distY*3);
  
  //BAR TOP
  fill(70);//BG GRAY
  rect(posX+120, posY+2+distY, 100, 10);
    fill(20, 100, 10);//BG COLOR
    rect(posX+120, posY+2+distY, 16, 10);

    fill(240);
    textSize(8);
    text("12", posX+122, posY+2+distY);
   
}

