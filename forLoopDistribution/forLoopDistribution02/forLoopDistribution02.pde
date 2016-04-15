
//int[] chaptersPosX = {boxW*1,boxW*1, boxW*2,boxW*2,boxW*2, boxW*3,boxW*3, boxW*4,boxW*4,boxW*4,boxW*4,boxW*4, boxW*5, boxW*6,boxW*6,boxW*6, boxW*7, boxW*8,boxW*8,boxW*8 };
//int[] chaptersPosY = {boxH*1,boxH*2, boxW*1,boxH*2,boxH*3, boxH*1,boxH*2, boxH*3,boxH*1,boxH*2,boxH*3,boxH*4, boxH*1, boxH*1,boxH*2,boxH*3, boxH*1, boxH*1,boxH*2,boxH*3 };
 
int[] chaptersArticles = { 
  1, 
  2, 2, 
  3, 3, 3, 
  4, 4, 4, 4, 
  5, 5, 5, 5, 5, 
  6, 6, 6, 6, 6, 6, 
  7, 7, 7, 7, 7, 7, 7, 
  8, 8, 8, 8, 8, 8, 8, 8, 
  9, 9, 9, 9, 9, 9, 9, 9, 9, 
 10,10,10,10,10,10,10,10,10,10, 
 11,11,11,11,11,11,11,11,11, 
 12,12,12,12,12,12,12,12,12,12,12,
 13,13,13,13,13,13,13,13,13,
 14,14,14,14,14,14,14,14,14,14,14,14,14,
 15,15,15
};

int numberOfArticles = 100;
int  boxW = 30;
int  boxH = 30;
int sep = 5;
int[] testPosX = new int[chaptersArticles.length];
int[] testPosY = new int[chaptersArticles.length];

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
  visualPosX = visualX;
  visualPosY = visualY;
  visualAreaW = visualW - gridUnit*2;//Width elements
  visualAreaH = visualH - gridUnit*9;//Height Elements
  smooth();

//CREEATE POSX
for(int i=0; i<testPosX.length; i++){

  if(chaptersArticles[i] == 1){
    testPosX[i] = boxW * 1;
    testPosY[i] = (boxH*i);
  }
  if(chaptersArticles[i] == 2){
    testPosX[i] = boxW * 2;
    testPosY[i] = (boxH*i)-(boxH*1);
  }
  if(chaptersArticles[i] == 3){
    testPosX[i] = boxW * 3;
    testPosY[i] = (boxH*i)-(boxH*3);
  }
  if(chaptersArticles[i] == 4){
    testPosX[i] = boxW * 4;
    testPosY[i] = boxH*i-(boxH*6);
  }
  if(chaptersArticles[i] == 5){
    testPosX[i] = boxW * 5;
    testPosY[i] = (boxH*i)-(boxH*10);
  }
  if(chaptersArticles[i] == 6){
    testPosX[i] = boxW * 6;
    testPosY[i] = (boxH*i)-(boxH*15);
  }
  if(chaptersArticles[i] == 7){
    testPosX[i] = boxW * 7;
    testPosY[i] = (boxH*i)-(boxH*21);
  }
  if(chaptersArticles[i] == 8){
    testPosX[i] = boxW * 8;
    testPosY[i] = (boxH*i)-(boxH*28);
  }
  if(chaptersArticles[i] == 9){
    testPosX[i] = boxW * 9;
    testPosY[i] = (boxH*i)-(boxH*36);
  }
  if(chaptersArticles[i] == 10){
    testPosX[i] = boxW * 10;
    testPosY[i] = (boxH*i)-(boxH*45);
  }
  if(chaptersArticles[i] == 11){
    testPosX[i] = boxW * 11;
    testPosY[i] = (boxH*i)-(boxH*55);
  }
  if(chaptersArticles[i] == 12){
    testPosX[i] = boxW * 12;
    testPosY[i] = (boxH*i)-(boxH*64);
  }
  if(chaptersArticles[i] == 13){
    testPosX[i] = boxW * 13;
    testPosY[i] = (boxH*i)-(boxH*75);
  }
  if(chaptersArticles[i] == 14){
    testPosX[i] = boxW * 14;
    testPosY[i] = (boxH*i)-(boxH*84);
  }
  if(chaptersArticles[i] == 15){
    testPosX[i] = boxW * 15;
    testPosY[i] = (boxH*i)-(boxH*97);
  }

}




}

void draw() {
  background(100);
  textSize(10);
//  noCursor();
int bajar = 100;

  //BOXES BUTTONS
  for (int i=0; i<numberOfArticles; i++) {
      stroke(0, 200, 0);
      fill(50); 
/*      rect(chaptersPosX[i], chaptersPosY[i], boxW-sep, boxH-sep);//boxes each article    
      fill(200); 
      text(1+i, sep+chaptersPosX[i], 10+chaptersPosY[i]);

      rect(testPosX[i], boxH*i, boxW-sep, boxH-sep);//boxes each article    
      fill(200, 100); 
      text(1+i, sep+testPosX[i], 10+boxH*i);

*/
      rect(testPosX[i], bajar+testPosY[i], boxW-sep, boxH-sep);//boxes each article    
      fill(200, 100); 
      text(1+i, sep+testPosX[i], bajar+testPosY[i]+10);

  }//close for draw boxes
  
  
  //TEST BOX ROLLOVER
    for (int i=0; i<numberOfArticles; i++) {
    int sep = 10;
      if(  (mouseX>testPosX[i] && mouseX<testPosX[i]+boxW-sep)  &&  (mouseY>bajar+testPosY[i] && mouseY<bajar+testPosY[i]+boxH-sep)  ){
      //ROL OVER
      detailsOverVisualizationTopic( mouseX, mouseY, "Articulo N XX - " + "245 words\n" + "Topic 1, topic 2, topic 3, topic 4, topic 5", chaptersArticles[1] );
      }
  }//close for 


}//CLOSE DRAW


void detailsOverVisualizationTopic( float _newPosBoxX, float _newPosBoxY, String _detailText, float _detailData ) {  
  int boxW = 160;
  int boxH = 100;
  int boxPosX = 0;
  int moveX = -120;
  int dis = 2;
  noStroke();

  pushMatrix();
  //CHECK IF IS BEYOND WIDTH
    if(mouseX > width-boxW){
        boxPosX = boxPosX+ moveX;
    } else{
      boxPosX = 0;
    } 
    translate(_newPosBoxX-15, _newPosBoxY-boxH-15);
    //TRIANGLE BELOW
    fill(50, 150); //COLOR BG colorTop[13]-200 
    triangle(10+dis, boxH+dis, 20+dis, boxH+dis, 15+dis, boxH+dis+10);
    
    //CAJA Y TRIANG DEBAJO
    fill(50, 150); //COLOR BG colorTop[13]-200 
    rect(boxPosX+dis, 0+dis, boxW+dis, boxH+dis);
    //BOX AND TRIANGE OVER
    fill(220); //COLOR TEXT 
    triangle(10, boxH, 20, boxH, 15, boxH+10);
    rect(boxPosX, 0, boxW, boxH);
    //TEXT
    fill(50);
    textAlign(LEFT);
    text(_detailText+"\n" + _detailData, boxPosX+5, 5, boxW-15, boxH-15 );
    text("Click for details" + _detailData, boxPosX+5, 80, boxW-15, boxH-15 );
  popMatrix();
}//CLOSE detailsOverVisualizationTopic







