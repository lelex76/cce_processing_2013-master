String[] chaptersNumber = {"I","II","III","IV","V","VI","VII","VIII","IX","X","XI","XII","XIII","XIV","XV","TD"}; 
String[] chaptersTitle = {"Bases of Institutionally","Nationality and Citizenship","Constitutional Rights and Duties","Government","National Congress","Judicial Power","Public Ministry","Constitutional Tribunal","Electoral Justice","Office of the Comptroller General of the Republic","Armed Forces, Forces of Order and Public Security","Council of National Security","Central Bank","Government & Interior Administration of the State","Reform of the Constitution","Transitory Provisions"}; 

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
//NUMERIC TITLE OF EACH ARTICLE AS APPEARS IN THE CONSTITUTION
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
//CATEGORIZATION FOR EACH ARTICLE'S LENGHT
int[] articlesCategoryNumber = {2,1,1,1,1,1,1,2,2,2,1,1,1,1,1,2,1,2,9,1,2,1,2,1,2,3,2,2,3,2,1,5,1,1,1,1,2,2,2,1,3,2,2,2,1,2,1,1,1,1,1,2,5,4,4,1,1,3,2,1,3,2,1,4,3,3,2,2,1,1,2,2,1,2,1,1,2,3,4,1,2,1,1,3,2,2,2,2,1,1,1,1,3,8,2,3,2,1,2,3,1,2,1,1,2,1,2,2,1,2,1,2,1,3,1,3,1,1,3,2,1,1,1,1,2,1,2,1,2,2,2,1,2,1,1,1,1,1,2,1,1,1,1,2,3,2,1,1,1,1,1,1,1,1,2,1,1};
int numberOfArticles = articlesIdNumber.length;
int[] articlesPosX = new int[articlesIdNumber.length];
int[] articlesPosY = new int[articlesIdNumber.length];
int[] articlesH   = new int[articlesIdNumber.length];

// VARIABLES FOR TOPIC STRUCTURE
int  boxW = 40;
int  boxH = 12;
int sep = 2;
int factorH;
int gridUnit = 20;
int visualX = 220;
int visualY = 170;
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

//CREATE HEIGTH BOXES
  for(int i=0; i<articlesCategoryNumber.length; i++){
    factorH = articlesCategoryNumber[i];
  if(factorH==1){boxH=12;}; if(factorH==2){boxH=14;}; if(factorH==3){boxH=16;}; if(factorH==4){boxH=18;}; if(factorH==5){boxH=20;}; if(factorH==8){boxH=22;};  if(factorH==9){boxH=34;}; 
    articlesH[i] = boxH;
  }


  //CREATE POSX & POSY
  for (int i=0; i<articlesPosX.length; i++) {
    int factorUp = 0;
    factorH = articlesH[i];


    if (articlesIdNumber[i] >= 1) {
      articlesPosX[i] = boxW * 0;
      factorUp = boxH*1;
      articlesPosY[i] =  articlesH[i] * i - factorUp ;
    }
    if (articlesIdNumber[i] > 9) {
      articlesPosX[i] = boxW * 1;
      factorUp = boxH*10;
      articlesPosY[i] =  articlesH[i] * i - factorUp ;
    }
    if (articlesIdNumber[i] > 18) {
      articlesPosX[i] = boxW * 2;
      factorUp = boxH*19;
      articlesPosY[i] =  articlesH[i] * i - factorUp ;
    }
    if (articlesIdNumber[i] >23) {
      articlesPosX[i] = boxW * 3;
      factorUp = boxH*24;
      articlesPosY[i] =  boxH * i - factorUp ;
    }
    if (articlesIdNumber[i] > 45) {
      articlesPosX[i] = boxW * 4;
      factorUp = boxH*46;
      articlesPosY[i] =  boxH * i - factorUp ;
    }
    if (articlesIdNumber[i] > 75) {
      articlesPosX[i] = boxW * 5;
      factorUp = boxH*76;
      articlesPosY[i] =  boxH * i - factorUp ;
    }
    if (articlesIdNumber[i] > 82) {
      articlesPosX[i] = boxW * 6;
      factorUp = boxH*83;
      articlesPosY[i] =  boxH * i - factorUp ;
    }
    if (articlesIdNumber[i] > 91) {
      articlesPosX[i] = boxW * 7;
      factorUp = boxH*92;
      articlesPosY[i] =  boxH * i - factorUp ;
    }
    if (articlesIdNumber[i] > 94) {
      articlesPosX[i] = boxW * 8;
      factorUp = boxH*95;
      articlesPosY[i] =  boxH * i - factorUp ;
    }
    if (articlesIdNumber[i] > 97) {
      articlesPosX[i] = boxW * 9;
      factorUp = boxH*98;
      articlesPosY[i] =  boxH * i - factorUp ;
    }
    if (articlesIdNumber[i] >100) {
      articlesPosX[i] = boxW * 10;
      factorUp = boxH*101;
      articlesPosY[i] =  boxH * i - factorUp ;
    }
    if (articlesIdNumber[i] >105) {
      articlesPosX[i] = boxW * 11;
      factorUp = boxH*106;
      articlesPosY[i] =  boxH * i - factorUp ;
    }
    if (articlesIdNumber[i] >107) {
      articlesPosX[i] = boxW * 12;
      factorUp = boxH*108;
      articlesPosY[i] =  boxH * i - factorUp ;
    }
    if (articlesIdNumber[i] > 109) {
      articlesPosX[i] = boxW * 13;
      factorUp = boxH*110;
      articlesPosY[i] =  boxH * i - factorUp ;
    }
    if (articlesIdNumber[i] >128) {
      articlesPosX[i] = boxW * 14;
      factorUp = boxH*129;
      articlesPosY[i] =  boxH * i - factorUp ;
    }
    if (articlesIdNumber[i] >131) {
      articlesPosX[i] = boxW * 15;
      factorUp = boxH*132;
      articlesPosY[i] =  boxH * i - factorUp ;
    }
    if (articlesIdNumber[i] > 157) {
      articlesPosX[i] = boxW * 16;
      factorUp = boxH*158;
      articlesPosY[i] =  boxH * i - factorUp ;
    }

  }
}



void draw() {
  background(50);
  textSize(10);

// /*
int sz = 40;
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
// */

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
    if (  (mouseX>visualPosX+boxW*i && mouseX<visualPosX+boxW*i+boxW-sep)  &&  (mouseY>visualPosY-boxH*3 && mouseY<visualPosY-boxH*1-5)  ) {
      //ROL OVER
      detailsOverVisualizationChapter( mouseX, mouseY, chaptersTitle[i], "Topic 1, Topic 2, Topic 3, Topic 4, Topic 5, Topic 6" );
    }
  }//close for
//CLOSE BOXES CHAPTERS TOP - - - - - - - - - - - - - - - - - - - - - - - 





//BOXES VISUALIZATION ARTICLES BUTTONS - - - - - - - - - - - - - - - - - - - - - - - 
  for (int i=0; i<numberOfArticles; i++) {
//BOXES ARTICLES BELLOW
    noStroke();
    fill(70); 
    
    rect(visualPosX+articlesPosX[i], visualPosY+articlesPosY[i], boxW-sep, articlesH[i]/*boxH-sep*/);//boxes each article    
    fill(200, 170); 
    textSize(8);  textAlign(LEFT);
    text(articlesTitNumber[i], visualPosX+sep+articlesPosX[i], visualPosY+articlesPosY[i]+8);
  }//close for draw boxes


  //DETAILS ARTICLES ON ROLLOVER
  for (int i=0; i<numberOfArticles; i++) {
    int sep = 10;
    if (  (mouseX>visualPosX+articlesPosX[i] && mouseX<visualPosX+articlesPosX[i]+boxW-sep)  &&  (mouseY>visualPosY+articlesPosY[i] && mouseY<visualPosY+articlesPosY[i]+boxH)  ) {
      //ROL OVER
      detailsOverVisualizationTopic( mouseX, mouseY, articlesTitNumber[i], articlesIdNumber[1], "XXXXARTICLES Topic 1, Topic 2, Topic 3, Topic 4, Topic 5, Topic 6" );
    }
  }  //DETAILS ARTICLES ON ROLLOVER
  

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
  textSize(12);
  textAlign(CENTER);textLeading(14);
  text(_chapterTitle, boxPosX+10, -4, boxW-20, boxH-15 );
  textSize(10);
  text(_chapterDescription, boxPosX+10, 35, boxW-20, boxH );


  popMatrix();
}//CLOSE detailsOverVisualizationChapter




