int[] chaptersArticles = { 
  1, 
  8, 2, 
  3, 3, 3, 
  4, 4, 4, 4, 
  5, 5, 5, 5, 5, 
  6, 6, 6, 6, 6, 6, 
  7, 7, 7, 7, 7, 7, 7, 
  8, 8, 8, 8, 8, 8, 8, 8, 
  9, 9, 9, 9, 9, 9, 9, 9, 9, 
  10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 
  9, 9, 9, 9, 9, 9, 9, 9, 9, 
  8, 8, 8, 8, 8, 8, 8, 8, 
  7, 7, 7, 7, 7, 7, 7, 
  6, 6, 6, 6, 6, 6, 
  5, 5, 5, 5, 5, 
  4, 4, 4, 4, 
  3, 3, 3, 
  2, 2, 
  1
};
int gridUnit = 20;
int numberOfBoxes = 20;
int visualX = 0;
int visualY = 0;
int visualW = 1020; 
int visualH = 700-gridUnit*2; 

int visualPosX;
int visualPosY;
int visualAreaW;//Width elements
int visualAreaH;//Height Elements
int boxW;
int boxH;
int counter;    


void setup() {
  size(1000, 700);

visualPosX = visualX;
visualPosY = visualY;
visualAreaW = visualW - gridUnit*2;//Width elements
visualAreaH = visualH - gridUnit*9;//Height Elements
boxW = 20;
boxH = 20;
 counter = 0;    

}

void draw() {
  background(50);
  stroke(0, 200, 0);
  textSize(10);
  //BOXES BUTTONS
  for (int i=0; i<numberOfBoxes; i++) {
    fill(50); 
      if(chaptersArticles[i] == counter){
        visualPosX = visualPosX+100;
        visualPosY = 0;
      }else{
        visualPosX = 0;
        visualPosY = 0;
      }
counter++;

      rect(visualPosX+boxW, visualPosY+boxH*i,  boxW,boxH);//boxes each article
      fill(200); 
      text(1+i, visualPosX+boxW, 10+visualPosY+boxH*i);

  
  
      text("Number Of Boxes" + numberOfBoxes, 400, 20);
      text("value of chaptersArticles[i]: " + chaptersArticles[i], 400, 60+ 10*i);
}

}
