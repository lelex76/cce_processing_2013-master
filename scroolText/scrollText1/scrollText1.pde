String[] art;
String artJoined;
int totalNumCharac;

int scrollW = 350;
int scrollH;
int scrollPosX = 1;
int scrollPosY = 100; 
int moveY;

int scrollTextSize = 12;
int charPerLine = 48; 
int artWords;
int artTextLenght;
int textScrollMapped;
float scrollBoxConstrain;
 //(charPerLine/scrollTextSize);

void setup() {
  size(500, 900);
  art = loadStrings("artText.txt");
  artJoined = join(art," ");
  totalNumCharac = artJoined.length();
  boolean scrollOn = false;
  scrollBoxConstrain = 100+1;//initial value scroll box
  artWords = (totalNumCharac / charPerLine) *18 ;  
  artTextLenght = artWords;
  textSize(scrollTextSize);
  noStroke();
  moveY = 1;
  scrollH = artWords;
  textAlign(LEFT);
}

void draw() {
  background(255);
// Scroll Cosntrain
  int scrollBoxX = 400;
  int scrollBoxY = 0;
  int scrollBoxW = 20;
  int scrollBoxH = 20;
  int scrollBoxTop = 100;
  int scrollBoxBottom = 400;

  //CHECK MOUSE OVER
  if(mousePressed){
   scrollBoxConstrain = constrain(mouseY, scrollBoxTop+1, scrollBoxBottom+(scrollBoxH+scrollBoxW));
  }  
// Scroll Map
float  x1 = map(scrollBoxConstrain, scrollBoxTop, scrollBoxBottom, 0, scrollH*-1);

//SCROLL BAR
  fill(50);rect(scrollBoxX-1, scrollPosY, scrollBoxW+2, scrollBoxBottom);//Bellow
  fill(150);rect(scrollBoxX, scrollBoxConstrain, scrollBoxW, scrollBoxH );

 
//TextScroll 
  fill(230);
  text(totalNumCharac, 400, 20);
  rect(scrollPosX, scrollPosY, scrollW, scrollH);
  fill(0);
  text(artJoined, scrollPosX, scrollPosY+x1, scrollW, scrollH+100);
//  scrollPosY -= moveY;
}//CLOSE SETUP

 
