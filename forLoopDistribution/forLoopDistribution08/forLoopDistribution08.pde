// Fixed: Roll overs articles,  

//PRESENT IN MAIN APP??
float gridUnit = 20;
float visualX = 0;
float visualY = 0;//160
float visualW = 1020; 
float visualH = 700-gridUnit*2; 

float visualPosX = 240;
float visualPosY = 160;
float visualAreaW;//Width elements
float visualAreaH;//Height Elements

// TOPICS ELEMENTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
//TOPICS - CHAPTERS & ARTICLES DATA
String[] chaptersNumber = {"I","II","III","IV","V","VI","VII","VIII","IX","X","XI","XII","XIII","XIV","XV","TD"}; 
String[] chaptersTitle = {"Bases of Institutionally","Nationality and Citizenship","Constitutional Rights and Duties","Government","National Congress","Judicial Power","Public Ministry","Constitutional Tribunal","Electoral Justice","Office of the Comptroller General of the Republic","Armed Forces, Forces of Order and Public Security","Council of National Security","Central Bank","Government & Interior Administration of the State","Reform of the Constitution","Transitory Provisions"}; 
int[] chapterStartAt = {1,10,19,24,46,76,83,92,95,98,101,106,108,110,129,132};
int[] articlesCategory = {3,1,2,1,2,2,2,3,3,3,2,2,2,2,1,3,2,3,19,2,3,2,3,2,3,4,3,3,4,3,1,6,2,2,2,1,3,3,3,1,4,3,3,3,2,3,1,1,2,2,1,3,6,5,5,2,1,4,3,2,4,3,1,5,4,4,3,3,2,2,3,3,1,3,2,2,3,4,5,2,3,2,2,4,3,3,3,3,2,2,1,1,4,9,3,4,3,1,3,4,2,3,1,2,3,2,3,3,1,3,2,3,2,4,2,4,2,1,4,3,2,2,2,2,3,1,3,2,3,3,3,1,3,1,2,1,1,1,3,2,1,1,1,3,4,3,1,1,1,1,1,1,1,2,3,1,2};
int[] articlesIdNumber = { 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157};
String[] articlesTitNumber = { 
  "1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","37 bis","38","39","40","41","42","43","44","45",
  "46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97",
  "98","99","100","101","102","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117","118","119","120","121","122","123","124","125","126","126 bis","127","128","129",
  "1st","2nd","3th","4th","5th","6th","7th","8th","9th","10th","11th","12th","13th","14th","15th","16th","17th","18th","19th","20th","21th","22th","23th","24th","25th","26th"
/*"FIRST","SECOND","THIRTH","FOURTH","FIFTH","SIXTH","SEVENTH","EIGHT","NINTH","TENTH","ELEVENTH","TWELFTH","THIRTEENTH","FOURTEENTH","FIFTEENTH","SIXTEENTH","SEVENTEENTH","EIGHTEENTH","NINETEENTH","TWENTY","TWENTY FIRST","TWENTY SECOND","TWENTY THIRTH","TWENTY FOURTH","TWENTY FIFTH","TWENTY SIXTH"*/
};
int[] articlesWordLength = {163,18,59,5,94,67,87,181,194,144,90,74,85,70,28,118,93,153,4209,84,219,82,104,84,140,287,152,178,326,162,34,818,84,61,61,26,104,111,103,49,252,173,171,210,93,105,49,37,61,80,38,238,790,547,569,79,47,279,154,81,469,178,31,532,267,449,104,234,93,68,175,196,24,131,76,77,197,257,575,68,217,64,64,277,127,163,180,136,62,97,21,23,435,1633,186,262,217,37,183,280,64,137,34,71,134,81,126,117,31,125,75,118,63,378,63,341,83,25,378,164,82,59,96,77,231,21,147,84,130,230,231,33,200,46,59,45,36,35,104,53,43,45,23,114,364,151,28,32,20,48,41,32,50,54,167,32,80};
int numberOfArticles = articlesIdNumber.length;
int[] articlesPosX = new int[articlesIdNumber.length];
int[] articlesPosY = new int[articlesIdNumber.length];
int[] articlesH   = new int[articlesIdNumber.length];

//Articles Boxes Values
float[] bH = new float[numberOfArticles];//stores articles box height values
float[] posY = new float[numberOfArticles+1];//initial articles box Y values of check ducplicated w articlesPosY[i]???
int articleBoxW = 40;//Articles box width, 35-45 optimal
int articleBoxHintial = 12;//Articles box height, 10-14 optimal
int countToRight = 0;//Counts initial chapter to mve right
float sep = 1.0;//separator among articles and chapters
//Boxes Chapters
float boxChapterH = gridUnit;
float boxChapterW = articleBoxW;
float boxChapterX;
float boxChapterY;
// CLOSE TOPICS ELEMENTS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 





void setup() {// - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  size(1000, 700);background(80);
  noStroke();
  smooth();
//PRESENT IN MAIN APP  
//  visualAreaW = visualW - gridUnit*2;//Width elements
//  visualAreaH = visualH - gridUnit*9;//Height Elements
  checkCategory();//BEfore in draw...

}//CLOSE SETUP - - - - - - - - - - - - - - - - - - - - - - - - - - - - 





void draw(){// - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  background(80);
  guiSimulation();
//PANEL VISUALIZATION ELEMENTS
  visualizationLabels( gridUnit*45, 150 );
  chaptersTopDisplay();
  articlesDisplayBoxes();

}//CLOSE DRAW - - - - - - - - - - - - - - - - - - - - - - - - - - - - 






  
  
  
//1- CHECK CATEGORY HEIGHT OR WIDTHS - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
void  checkCategory() {
//  posY[0] = 0;//starting at...
  for(int i=0; i<articlesCategory.length; i++){
    fill(200);
    if(articlesCategory[i]==1){ bH[i]  = articleBoxHintial*1.0; }//category 1 & 2 the same
    if(articlesCategory[i]==2){ bH[i]  = articleBoxHintial*1.0; }
    if(articlesCategory[i]==3){ bH[i]  = articleBoxHintial*1.5; }
    if(articlesCategory[i]==4){ bH[i]  = articleBoxHintial*2.0; }//4 & 5 equals
    if(articlesCategory[i]==5){ bH[i]  = articleBoxHintial*2.0; }
    if(articlesCategory[i]==6){ bH[i]  = articleBoxHintial*2.5; }
    if(articlesCategory[i]==7){ bH[i]  = articleBoxHintial*3.0; }// from here 1 point less
    if(articlesCategory[i]==8){ bH[i]  = articleBoxHintial*3.0; }
    if(articlesCategory[i]==9){ bH[i]  = articleBoxHintial*3.5; }
    if(articlesCategory[i]==10){ bH[i] = articleBoxHintial*4.0; }
    if(articlesCategory[i]==11){ bH[i] = articleBoxHintial*4.5; }
    if(articlesCategory[i]==12){ bH[i] = articleBoxHintial*6.0; }
    if(articlesCategory[i]==13){ bH[i] = articleBoxHintial*6.5; }
    if(articlesCategory[i]==14){ bH[i] = articleBoxHintial*7.0; }
    if(articlesCategory[i]==15){ bH[i] = articleBoxHintial*7.5; }
    if(articlesCategory[i]==16){ bH[i] = articleBoxHintial*8.0; }
    if(articlesCategory[i]==17){ bH[i] = articleBoxHintial*8.5; }
    if(articlesCategory[i]==18){ bH[i] = articleBoxHintial*9.0; }
    if(articlesCategory[i]==19){ bH[i] = articleBoxHintial*9.5; }
  }
}//CLOSE 1- CHECK CATEGORY HEIGHT OR WIDTHS - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


//2- DISPLAY CHAPTERS TOP - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
void chaptersTopDisplay(){
  for (int i=0; i<chaptersNumber.length; i++) {
      boxChapterX = visualPosX + boxChapterW*i;
      boxChapterY = visualPosY - boxChapterH;
      
      fill(240, 100, 20);
      rect(boxChapterX, boxChapterY, boxChapterW-sep*5, boxChapterH);//boxes each section, negative value to show at -height
      fill(250);textAlign(LEFT);textSize(10);
      text(chaptersNumber[i], 4+visualPosX+articleBoxW*i, boxChapterY+10);//boxes each article
      //BOXES ARTICLES
      if (i == 15) {//select first columt to color
        fill(150, 200, 250);
      }else {
        fill(200, 240, 240);
      }
    //BOX VIS ARTICLE TOP ROLLOVER
    if (  (mouseX>boxChapterX && mouseX<boxChapterX+articleBoxW-sep*5)  &&  (mouseY>boxChapterY && mouseY<boxChapterY+boxChapterH)  ) {
      chapterDetailsOverVisualization( mouseX, visualPosY, chaptersTitle[i], "Topic 1, Topic 2, Topic 3, Topic 4, Topic 5, Topic 6" );
    }
  }//close for
}//2- BOXES CHAPTERS TOP - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


//3- DETAILS OVER CHAPTERS on chaptersTopDisplay() - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
void chapterDetailsOverVisualization( float _newPosBoxX, float _newPosBoxY, String _chapterTitle, String _chapterDescription ) {  
  int boxW = 320;
  int boxH = 70;
  int boxPosX = -boxW/2;
  int dis = 4;
  noStroke();
  pushMatrix();
    translate(_newPosBoxX, visualPosY-90);    //CHECK IF IS BEYOND WIDTH
    //TRIANGLE BELOW GRIS
    fill(50, 150); //COLOR BG colorTop[13]-200 
    triangle(-10+dis, dis+boxH-10, 10+dis, dis+boxH-10, 0+dis, dis+boxH);
    rect(boxPosX+dis, -10+dis, boxW, boxH);
    //BOX AND TRIANGE OVER
    fill(250, 150, 50); //COLOR TEXT 
    triangle(-10, boxH-10, 10, boxH-10, 0, boxH);
    fill(250, 150, 50); //COLOR TEXT 
    rect(boxPosX, -10, boxW, boxH);
      fill(240, 130, 30); //COLOR TEXT 
      rect(boxPosX, -10, boxW, 27);
    //TEXT
    fill(50);
    textSize(12);
    textAlign(CENTER);textLeading(14);
    text(_chapterTitle, boxPosX+5, -4, boxW-10, boxH-15 );//TEXT TITLE
    textSize(10);
    text(_chapterDescription, boxPosX+10, 20, boxW-20, boxH );//Text description
  popMatrix();
}//3- CLOSE OVER VISUALIZATIONS CHAPTER TOP - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


//4- DISPLAY ARTICLES  - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
void articlesDisplayBoxes(){
  //  posY[0] = 0;//starting at...
  
  //1- ASSIGN VALUES
  for(int i=0; i<articlesCategory.length; i++){
    fill(200);
    //CHECK THE STARTING ARTICE NUMBER TO ASIGN NEW X POS TO THE RIGHT
    for(int j=0; j<chapterStartAt.length; j++){
      if(articlesIdNumber[i] == chapterStartAt[j]){
        posY[i] = 0;
        posY[i+1] = posY[i]+bH[i];  
        if(chapterStartAt[j]>0){ 
           countToRight = j;//to avoid to move animated to the left...  
        } //to aoid to move one more W at start 
      }else {
        posY[i+1] = posY[i]+bH[i];  
      }//close if 
    }//CLOSE FOR 2
    //STORE NEW POSITIONS
//    newPosX = visualPosX + articleBoxW*countToRight;
//    newPosY = visualPosY + posY[i] + sep;
//    articlesPosX[i] = int(newPosX) ;
//    articlesPosY[i] = int(newPosY) ;
    articlesPosX[i] = int(visualPosX + articleBoxW*countToRight);
    articlesPosY[i] = int(visualPosY + posY[i] + sep);
    //DRAW BOXES
    //    rect( newPosX ,articlesPosY[i] ,articleBoxW-sep*5, bH[i]-sep );
    rect( articlesPosX[i] ,articlesPosY[i] ,articleBoxW-sep*5, bH[i]-sep );
    //DRAW TEXT
    textSize(8);textAlign(LEFT);fill(100);
    text(articlesTitNumber[i], 2+articlesPosX[i], articlesPosY[i]+8);
  }//CLOSE FOR 1- ASSIGN VALUES

 //SHOW DETAILS ON ROLLOVERS
   for(int i=0; i<articlesCategory.length; i++){
     if (  (mouseX>articlesPosX[i] && mouseX<articlesPosX[i]+articleBoxW-sep*5)  &&  (mouseY>articlesPosY[i] && mouseY<articlesPosY[i]+bH[i]-sep)  ) {
        articleDetailsOverVisualization( mouseX, mouseY, articlesTitNumber[i], articlesWordLength[i], "XXXXARTICLES Topic 1, Topic 2, Topic 3, Topic 4, Topic 5, Topic 6" );
     } 
   } //CLOSE SHOW DETAILS ON ROLLOVERS

}//4- CLOSE DISPLAY CHAPTER BOXES - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


//5- DETAILS OVER ARTICLES BELLOW - on articlesDisplayBoxes()- - - - - - - - - - - - - - - 
void articleDetailsOverVisualization( float _newPosBoxX, float _newPosBoxY, String _articleNumberText, int _articleWordsNum, String _articleTopics ) {  
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
    } else {
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
    fill(150, 220, 250); //COLOR TEXT 
    triangle(10, boxH, 20, boxH, 15, boxH+10);
    rect(boxPosX, 0, boxW, boxH);
      fill(100, 200, 210); //COLOR TEXT 
      rect(boxPosX, 0, boxW, 30);
    //TEXT
    fill(50);
    textSize(14);
    textAlign(LEFT);
    text("Article nº "+_articleNumberText, boxPosX+8, 6, boxW-15, boxH-12 );
    textSize(10);
    text("Words: "+_articleWordsNum, boxPosX+8, 35, boxW-15, boxH-1 );
    text("Topics: "+_articleTopics, boxPosX+8, 55, boxW-15, boxH-15 );
    text("CLICK TO VIEW", boxPosX+8, 105, boxW-15, boxH-15 );
  popMatrix();
}//5- CLOSE DETAILS OVER ARTICLES BELLOW - on articlesDisplayBoxes() - - - - - - - - - - - - - - -  


//6- LABELS VISUALIZATIONS - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
void visualizationLabels(float _x, float _y){
  float posX = _x;
  float posY = _y;
  fill(200);
  textSize(10);
  textAlign(LEFT);
  //TITLES
  text("Chapters", posX, posY);
  text("Articles", posX, posY+27);
  text("Label 1", posX, posY+480);
  text("Label 2", posX, posY+500);  
  text("Label 3", posX, posY+520);  
  fill(255, 0, 0);
//  rect(posX-10, posY-10, 1, 18);
//  fill(200);
//  rect(posX-10, posY+11, 1, 520);
} 
//6- END LABELS VISUALIZATIONS - - - - - - - - - - - - - - - - - - - - - - - - - - - - 






//X- GUI SIMULATION- - - - - - - - - - - - - - - - - - - - - - - - - - - - 
void guiSimulation(){
int sz = 40;
fill(20, 100, 200); rect(0, 0, sz, sz);
fill(20, 160, 180); rect(sz, 0, sz, sz);
fill(20, 160, 100); rect(sz*2, 0, sz, sz); textSize(18);
fill(20, 130, 80); rect(sz*3, 0, sz, sz);

fill(180); rect(0, sz, sz*4, sz);
fill(240); textAlign(LEFT); text("TITLE SECTION", 10, sz+25);

fill(40, 50, 60); rect(0, sz*3, sz*4, sz);
fill(50, 60, 80); rect(0, sz*4, sz*4, sz*20);//boc topics
}//CLOSE X- GUI SIMULATION- - - - - - - - - - - - - - - - - - - - - - - - - - - - 


