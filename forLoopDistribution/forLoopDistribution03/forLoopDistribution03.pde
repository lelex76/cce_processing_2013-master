//int[] chaptersPosX = {boxW*1,boxW*1, boxW*2,boxW*2,boxW*2, boxW*3,boxW*3, boxW*4,boxW*4,boxW*4,boxW*4,boxW*4, boxW*5, boxW*6,boxW*6,boxW*6, boxW*7, boxW*8,boxW*8,boxW*8 };
//int[] chaptersPosY = {boxH*1,boxH*2, boxW*1,boxH*2,boxH*3, boxH*1,boxH*2, boxH*3,boxH*1,boxH*2,boxH*3,boxH*4, boxH*1, boxH*1,boxH*2,boxH*3, boxH*1, boxH*1,boxH*2,boxH*3 };

int[] articlesIdNumber = { 
  1, 2, 3, 4, 5, 6, 7, 8, 9, 
  10,11,12,13,14,15,16,17,18, 
  19,20,21,22,23, 
  24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,
  46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,
  76,77,78,79,80,81,82,
  83,84,85,86,87,88,89,90,91,
  92,93,94,
  95,96,97,
  98,99,100,
  101,102,103,104,105,
  106,107,
  108,109,
  110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,
  129,130,131,
  132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157 
};

int numberOfArticles = articlesIdNumber.length;
int  boxW = 50;
int  boxH = 14;
int sep = 2;
int moverX = 150;
float nW;

int[] testPosX = new int[articlesIdNumber.length];
int[] testPosY = new int[articlesIdNumber.length];

int gridUnit = 20;
int visualX = 0;
int visualY = 0;
int visualW = 1020; 
int visualH = 700-gridUnit*2; 

int visualPosX;
int visualPosY;
int visualAreaW;//Width elements
int visualAreaH;//Height Elements
int[] visualPosXArray = new int[numberOfArticles];


void setup() {
  size(1000, 700);
  background(50);
  visualPosX = visualX;
  visualPosY = visualY;
  visualAreaW = visualW - gridUnit*2;//Width elements
  visualAreaH = visualH - gridUnit*9;//Height Elements
  smooth();


  //CREEATE POSX
  for (int i=0; i<testPosX.length; i++) {
    int factor;

    if (articlesIdNumber[i] >= 1) {
      testPosX[i] = boxW * 1;
      factor = boxH*1;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 9) {
      testPosX[i] = boxW * 2;
      factor = boxH*10;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 18) {
      testPosX[i] = boxW * 3;
      factor = boxH*19;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] >23) {
      testPosX[i] = boxW * 4;
      factor = boxH*24;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 45) {
      testPosX[i] = boxW * 5;
      factor = boxH*46;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 75) {
      testPosX[i] = boxW * 6;
      factor = boxH*76;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 82) {
      testPosX[i] = boxW * 7;
      factor = boxH*83;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 91) {
      testPosX[i] = boxW * 8;
      factor = boxH*92;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 94) {
      testPosX[i] = boxW * 9;
      factor = boxH*95;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 97) {
      testPosX[i] = boxW * 10;
      factor = boxH*98;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] >100) {
      testPosX[i] = boxW * 11;
      factor = boxH*101;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] >105) {
      testPosX[i] = boxW * 12;
      factor = boxH*106;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] >107) {
      testPosX[i] = boxW * 13;
      factor = boxH*108;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 109) {
      testPosX[i] = boxW * 14;
      factor = boxH*110;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] >128) {
      testPosX[i] = boxW * 15;
      factor = boxH*129;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] >131) {
      testPosX[i] = boxW * 15;
      factor = boxH*132;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 157) {
      testPosX[i] = boxW * 15;
      factor = boxH*158;
      testPosY[i] =  boxH * i - factor ;
    }

  }
}



void draw() {
  background(50);
  textSize(10);
  //  noCursor();
  //nW = float(boxW);

  //BOXES BUTTONS
  for (int i=0; i<numberOfArticles; i++) {
    //stroke(0);
    noStroke();
    fill(70); 

    rect(moverX+testPosX[i], moverX+testPosY[i], boxW-sep, boxH-sep);//boxes each article    
    fill(200, 170); 
    textSize(8);
    text(articlesIdNumber[i], moverX+sep+testPosX[i], moverX+testPosY[i]+8);
  }//close for draw boxes


  //TEST BOX ROLLOVER
  for (int i=0; i<numberOfArticles; i++) {
    int sep = 10;
    if (  (mouseX>moverX+testPosX[i] && mouseX<moverX+testPosX[i]+boxW-sep)  &&  (mouseY>moverX+testPosY[i] && mouseY<moverX+testPosY[i]+boxH)  ) {
      //ROL OVER
      detailsOverVisualizationTopic( mouseX, mouseY, "Articulo N "+articlesIdNumber[i]+ "\n245 words\n" + "Topic 1, topic 2, topic 3, topic 4, topic 5", articlesIdNumber[1] );
    }

  }//close for
}//CLOSE DRAW






void detailsOverVisualizationTopic( float _newPosBoxX, float _newPosBoxY, String _detailText, float _detailData ) {  
  int boxW = 175;
  int boxH = 125;
  int boxPosX = 0;
  int moveX = -120;
  int dis = 2;
  noStroke();

  pushMatrix();
  //CHECK IF IS BEYOND WIDTH
  if (mouseX > width-boxW) {
    boxPosX = boxPosX+ moveX;
  } 
  else {
    boxPosX = 0;
  } 
  translate(_newPosBoxX-15, _newPosBoxY-boxH-15);
  //TRIANGLE BELOW
  fill(50, 150); //COLOR BG colorTop[13]-200 
  triangle(10+dis, boxH+dis, 20+dis, boxH+dis, 15+dis, boxH+dis+10);

  //CAJA Y TRIANG DEBAJO
  fill(20, 150); //COLOR BG colorTop[13]-200 
  rect(boxPosX+dis, 0+dis, boxW+dis, boxH+dis);
  //BOX AND TRIANGE OVER
  fill(200, 100, 0); //COLOR TEXT 
  triangle(10, boxH, 20, boxH, 15, boxH+10);
  rect(boxPosX, 0, boxW, boxH);
  //TEXT
  fill(50);
  textSize(10);
  textAlign(LEFT);
  text(_detailText+"\n" + _detailData, boxPosX+5, 5, boxW-15, boxH-15 );
  text("Click for details" + _detailData, boxPosX+5, 80, boxW-15, boxH-15 );
  popMatrix();
}//CLOSE detailsOverVisualizationTopic






