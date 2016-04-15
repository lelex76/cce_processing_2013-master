int[] articlesIdNumber = { 
  1, 2, 3, 4, 5, 6, 7, 8, 9, 
  10,11,12,13,14,15,16,17,18, 
  19,20,21,22,23, 
  24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,
  47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,
  77,78,79,80,81,82,83,
  84,85,86,87,88,89,90,91,92,
  93,94,95,
  96,97,98,
  99,100,101,
  102,103,104,105,106,
  107,108,
  109,110,
  111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,
  129,130,131,
  132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157  
};

String[] articlesTitNumber = { 
  "1","2","3","4","5","6","7","8","9",
  "10","11","12","13","14","15","16","17","18",
  "19","20","21","22","23",
  "24","25","26","27","28","29","30","31","32","33","34","35","36","37","37 bis","38","39","40","41","42","43","44","45",
  "46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75",
  "76","77","78","79","80","81","82",
  "83","84","85","86","87","88","89","90","91",
  "92","93","94",
  "95","96","97",
  "98","99","100",
  "101","102","103","104","105",
  "106","107",
  "108","109",
  "110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","126 bis",
  "127","128","129",
  "1st","2nd","3th","4th","5th","6th","7th","8th","9th","10th","11th","12th","13th","14th","15th","16th","17th","18th","19th","20th","21th","22th","23th","24th","25th","26th"
/*"FIRST","SECOND","THIRTH","FOURTH","FIFTH","SIXTH","SEVENTH","EIGHT","NINTH","TENTH","ELEVENTH","TWELFTH","THIRTEENTH","FOURTEENTH","FIFTEENTH","SIXTEENTH","SEVENTEENTH","EIGHTEENTH","NINETEENTH","TWENTY","TWENTY FIRST","TWENTY SECOND","TWENTY THIRTH","TWENTY FOURTH","TWENTY FIFTH","TWENTY SIXTH"*/
};

String[] chaptersNumber = {"I","II","III","IV","V","VI","VII","VIII","IX","X","XI","XII","XIII","XIV","XV","TD"}; 
String[] chaptersTitle = {"Bases of Institutionally","Nationality and Citizenship","Constitutional Rights and Duties","Government","National Congress","Judicial Power","Public Ministry","Constitutional Tribunal","Electoral Justice","Office of the Comptroller General of the Republic","Armed Forces, Forces of Order and Public Security","Council of National Security","Central Bank","Government and Interior Administration of the State","Reform of the Constitution","Transitory Provisions"}; 


int numberOfArticles = articlesIdNumber.length;
int  boxW = 40;
int  boxH = 16;
int sep = 2;

int[] testPosY = new int[articlesIdNumber.length];
int[] testPosX = new int[articlesIdNumber.length];

int gridUnit = 20;
int visualX = 220;
int visualY = 165;
int visualW = 1020; 
int visualH = 700-gridUnit*2; 

int visualPosX;
int visualPosY;
int visualAreaW;//Width elements
int visualAreaH;//Height Elements
 

void setup() {
  size(1000, 700);
  background(50);
  visualPosX = visualX;
  visualPosY = visualY;
  visualAreaW = visualW - gridUnit*2;//Width elements
  visualAreaH = visualH - gridUnit*9;//Height Elements
  smooth();


  //CREEATE POSX & POSY
  for (int i=0; i<testPosX.length; i++) {
    int factor = visualPosY;


    if (articlesIdNumber[i] >= 1) {
      testPosX[i] = boxW * 0;
      factor = boxH*1;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 9) {
      testPosX[i] = boxW * 1;
      factor = boxH*10;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 18) {
      testPosX[i] = boxW * 2;
      factor = boxH*19;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] >23) {
      testPosX[i] = boxW * 3;
      factor = boxH*24;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 45) {
      testPosX[i] = boxW * 4;
      factor = boxH*46;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 75) {
      testPosX[i] = boxW * 5;
      factor = boxH*76;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 82) {
      testPosX[i] = boxW * 6;
      factor = boxH*83;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 91) {
      testPosX[i] = boxW * 7;
      factor = boxH*92;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 94) {
      testPosX[i] = boxW * 8;
      factor = boxH*95;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 97) {
      testPosX[i] = boxW * 9;
      factor = boxH*98;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] >100) {
      testPosX[i] = boxW * 10;
      factor = boxH*101;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] >105) {
      testPosX[i] = boxW * 11;
      factor = boxH*106;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] >107) {
      testPosX[i] = boxW * 12;
      factor = boxH*108;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 109) {
      testPosX[i] = boxW * 13;
      factor = boxH*110;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] >128) {
      testPosX[i] = boxW * 14;
      factor = boxH*129;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] >131) {
      testPosX[i] = boxW * 15;
      factor = boxH*132;
      testPosY[i] =  boxH * i - factor ;
    }
    if (articlesIdNumber[i] > 157) {
      testPosX[i] = boxW * 16;
      factor = boxH*158;
      testPosY[i] =  boxH * i - factor ;
    }

  }
}



void draw() {
  background(50);
  textSize(10);

/*
int sz = 50;
//SIMULATION INTERFACE
fill(20, 100, 200);
  rect(0, 0, sz, sz);
fill(20, 160, 180);
  rect(sz, 0, sz, sz);
fill(20, 160, 100);
  rect(sz*2, 0, sz, sz); textSize(18);
  text("TITLE SECTION", sz*4, sz/2+7);
fill(20, 160, 100);
  rect(width-sz, 0, sz, sz);
fill(20, 60, 140);
  rect(0, sz*2, sz*3.5, sz);
*/

// TEST ROTATED
//translate(120, 840);
//rotate(-PI/2);
//scale(0.8, 1.2);
//END TEST ROTATED


//BOXES CHAPTERS TOP - - - - - - - - - - - - - - - - - - - - - - - 
  for (int i=0; i<chaptersNumber.length; i++) {
      fill(200, 100, 0);
      rect(visualPosX+boxW*i, visualPosY-boxH*3-sep, boxW-2, boxH*2);//boxes each section
      fill(200);textAlign(LEFT);textSize(12);
      text(chaptersNumber[i], 4+visualPosX+boxW*i, visualPosY-26);//boxes each article
      //BOXES ARTICLES
      if (i == 15) {//select first columt to color
        fill(150, 200, 250);
      }else {
        fill(200, 240, 240);
      }

  }//CLOSE FOR CHAPTER
  //BOX VIS ARTICLE TOP ROLLOVER
  for (int i=0; i<chaptersNumber.length; i++) {
    int sep = 10;
    if (  (mouseX>visualPosX+boxW*i && mouseX<visualPosX+boxW*i+boxW-sep)  &&  (mouseY>visualPosY-boxH*2-sep && mouseY<visualPosY-boxH*3-sep+boxH*3)  ) {
      //ROL OVER
      detailsOverVisualizationChapter( mouseX, mouseY, chaptersTitle[i], "Topic 1, Topic 2, Topic 3, Topic 4, Topic 5, Topic 6" );

    }
  }//close for



//BOXES VISUALIZATION ARTICLES BUTTONS - - - - - - - - - - - - - - - - - - - - - - - 
  for (int i=0; i<numberOfArticles; i++) {
//BOXES ARTICLES BELLOW
    noStroke();
    fill(70); 
    
    rect(visualPosX+testPosX[i], visualPosY+testPosY[i], boxW-sep, boxH-sep);//boxes each article    
    fill(200, 170); 
    textSize(8);  textAlign(LEFT);
    text(articlesTitNumber[i], visualPosX+sep+testPosX[i], visualPosY+testPosY[i]+8);
  }//close for draw boxes


  //BOX VIS ARTICLE ROLLOVER
  for (int i=0; i<numberOfArticles; i++) {
    int sep = 10;
    if (  (mouseX>visualPosX+testPosX[i] && mouseX<visualPosX+testPosX[i]+boxW-sep)  &&  (mouseY>visualPosY+testPosY[i] && mouseY<visualPosY+testPosY[i]+boxH)  ) {
      //ROL OVER
      detailsOverVisualizationTopic( mouseX, mouseY, articlesTitNumber[i], articlesIdNumber[1], "Topic 1, Topic 2, Topic 3, Topic 4, Topic 5, Topic 6" );
    }
  }//close for

}//CLOSE DRAW





//OVER VISUALIZATIONS BELLOW
void detailsOverVisualizationTopic( float _newPosBoxX, float _newPosBoxY, String _articleNumberText, float _articleWordsNum, String _articleTopics ) {  
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
  fill(0, 180, 200); //COLOR TEXT 
  triangle(10, boxH, 20, boxH, 15, boxH+10);
  rect(boxPosX, 0, boxW, boxH);
  //TEXT
  fill(50);
  textSize(14);
  textAlign(LEFT);
  text("Article nº "+_articleNumberText, boxPosX+8, 8, boxW-15, boxH-15 );
  textSize(10);
  text("Words: "+_articleWordsNum, boxPosX+8, 35, boxW-15, boxH-15 );
  text("Topics: "+_articleTopics, boxPosX+8, 55, boxW-15, boxH-15 );
  text("CLICK TO VIEW", boxPosX+8, 105, boxW-15, boxH-15 );

  popMatrix();
}//CLOSE detailsOverVisualizationTopic



//OVER VISUALIZATIONS CHAPTER TOP
void detailsOverVisualizationChapter( float _newPosBoxX, float _newPosBoxY, String _chapterTitle, String _chapterDescription ) {  
  int boxW = 260;
  int boxH = 70;
  int boxPosX = -boxW/2;
//  int moveX = -120;
  int dis = 4;
  noStroke();

  pushMatrix();
  //CHECK IF IS BEYOND WIDTH
  translate(_newPosBoxX, _newPosBoxY-boxH);
  //TRIANGLE BELOW GRIS
  fill(50, 150); //COLOR BG colorTop[13]-200 
  triangle(-10+dis, dis+boxH-10, 10+dis, dis+boxH-10, 0+dis, dis+boxH);
  rect(boxPosX+dis, -10+dis, boxW, boxH);
  //BOX AND TRIANGE OVER
  fill(220, 120, 250); //COLOR TEXT 
  triangle(-10, boxH-10, 10, boxH-10, 0, boxH);
  rect(boxPosX, -10, boxW, boxH);

  //TEXT
  fill(50);
  textSize(14);
  textAlign(CENTER);
  text(_chapterTitle, boxPosX+5, -4, boxW-15, boxH-15 );
  textSize(10);
  text(_chapterDescription, boxPosX+5, 20, boxW-10, boxH-10 );


  popMatrix();
}//CLOSE detailsOverVisualizationTopic




