int[] articlesIdNumber = { 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157};

//TOPIC TEXT SCROLL - - - - - - - - 
String[] art;
String artJoined;
int totalNumCharac;

int scrollW = 350;
int scrollH;
int scrollPosX = 50;
int scrollPosY = 100; 
int moveY;

int scrollTextSize = 12;
int charPerLine = 50; 
int artWords;
int artTextLenght;
int textScrollMapped;
float scrollBoxConstrain;
//TOPIC TEXT SCROLL CLOSE - - - - - - - - 

void setup() {
  size(500, 900);
  //TOPIC SCROLL TEXT
  art = loadStrings("artText1.txt");//Initial text Loaded
  scrollTextIntial();
}//COSE SETUP


void draw() {
  background(50);  

  scrollText(); 
}//CLOSE SETUP




//SCROLL INITIAL VALUES - - - - - - - - - - - - - - - - - - - - - - -  
void scrollTextIntial() {
//  art = loadStrings("artText.txt");
  artJoined = join(art," ");
  totalNumCharac = artJoined.length();
  boolean scrollOn = false;
  scrollBoxConstrain = 100+1;//initial value scroll box
  artWords = (totalNumCharac / charPerLine) *6 ;  
  artTextLenght = artWords;
  noStroke();
  moveY = 1;
  scrollH = artWords;
}//SCROLL INITIAL VALUES - - - - - - - - - - - - - - - - - - - - - - - 


//SCROLL GUI - - - - - - - - - - - - - - - - - - - - - - - 
void scrollText() {
  // Scroll Cosntrain
  int scrollBoxX = scrollPosX+400;
  int scrollBoxY = 0;
  int scrollBoxW = 20;
  int scrollBoxH = 20;
  int scrollBoxTop = 100;
  int scrollBoxBottom = 400;
  textSize(scrollTextSize);
  textAlign(LEFT);

  //CHECK MOUSE OVER
  if(mousePressed){
   scrollBoxConstrain = constrain(mouseY, scrollBoxTop+1, scrollBoxBottom+(scrollBoxH+scrollBoxW));
  }  
  // Scroll Map
  float  x1 = map(scrollBoxConstrain, scrollBoxTop, scrollBoxBottom, 0, scrollH*-1);

  //SCROLL BAR
  fill(20);rect(scrollBoxX-1, scrollPosY, scrollBoxW+2, scrollBoxBottom-40);//Bellow
  fill(150);rect(scrollBoxX, scrollBoxConstrain, scrollBoxW, scrollBoxH );

  //TextScroll 
  fill(20);
  text(totalNumCharac, 400, 20);
  rect(scrollPosX, scrollPosY, scrollW, scrollH);
  fill(220);
  text(artJoined, scrollPosX, scrollPosY+x1, scrollW, scrollH+100);

  //LOAD DIFFERENT TEXT
  if(keyPressed == true){
    if(key == '1'){
      art = loadStrings("artText1.txt");     
    }
    if(key == '2'){
      art = loadStrings("artText2.txt");     
    }
    if(key == '3'){
      art = loadStrings("artText3.txt");     
    }
    if(key == '4'){
      art = loadStrings("artText4.txt");     
    }
    scrollTextIntial();
  }//IF KEY PRESSED 



}//END SCROLL GUI - - - - - - - - - - - - - - - - - - - - - - - 




 
