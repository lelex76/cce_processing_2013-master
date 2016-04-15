//PANEL

  boolean menuBoxShow;


void setup(){
size(1024, 768);
menuBoxShow = false;

}

void draw(){
  background(20);
  menuCategories(0, 100);
}


void menuCategories(int _x, int _y){
  int menuX = _x;
  int menuY = _y;
  int menuW = 200;
  int menuH = 500;
  int menuTopButtonW = menuW;
  int menuTopButtonH = 60;
  boolean menuTopButtonOver;
//  boolean menuBoxShow;
  color menuTopButtonNormalCol = color(50);
  color menuTopButtonOverCol = color(100);
  color menuTopButtonCurrentCol = menuTopButtonNormalCol;

  //check inside button top, change colors - - - - - - - - - - - - - - - - 
  if(mouseX>menuX && mouseX<menuTopButtonW && mouseY>menuY&&mouseY<menuY+menuTopButtonH){
    menuTopButtonCurrentCol = menuTopButtonOverCol;
    menuTopButtonOver = true;
    //SHOW WHEN MOUSE PRESSED
    if( (mousePressed==true) && (menuBoxShow ==false) ){
    }else {
      menuBoxShow = true;
    }  
  }//CLOSE IF CHECK MOUSE OVER
  //CHECK IF IS BEYOND W AND CLOSE
  else if(mouseX>menuTopButtonW){       
    menuBoxShow = false; 
  }
  //DEFAULT VALUES  
  else{
    menuTopButtonCurrentCol = menuTopButtonNormalCol;
    menuTopButtonOver = false;//    menuBoxShow = false;
   }

  //BUTTON TOP
  fill(menuTopButtonCurrentCol);
  rect(menuX, menuY, menuTopButtonW, menuTopButtonH);
  fill(200);
  text("Select Topic", menuX+60, menuY+35);

  //display element  - - - - - - - - - - - - - - - - 
  if(menuBoxShow){
    fill(200);  
    rect(menuX, menuY+menuTopButtonH, menuW, menuH);

    //BUTONS
    for(int i=0; i<24;i++){
      menuButtons(0, 160+25*i, "button"+i);
    }//end for loop buttons

  }//END IF menuBoxShow


}//menuCategories end





void menuButtons(int _x, int _y, String _t){
  int menuButtonsX = _x;
  int menuButtonsY = _y;
  int menuButtonsW = 190;
  int menuButtonsH = 25;
  boolean menuButtonsOver;
  String textButtons = _t;
  color menuButtonsNormalCol = color(120);
  color menuButtonsOverCol = color(140);
  color menuButtonsClickCol = color(160);
  color menuButtonsCurrentCol = menuButtonsNormalCol;

  //check inside button top, change colors - - - - - - - - - - - - - - - - 
  if(mouseX>menuButtonsX && mouseX<menuButtonsW && mouseY>menuButtonsY&&mouseY<menuButtonsY+menuButtonsH){
    menuButtonsCurrentCol = menuButtonsOverCol;
    menuButtonsOver = true;
//    menuBoxShow = true;

    //SHOW WHEN MOUSE PRESSED
    if( (mousePressed==true) ){
      menuButtonsCurrentCol = menuButtonsClickCol;
    }else {
//      menuBoxShow = true;
    }
  }  
  else{
    menuButtonsCurrentCol = menuButtonsNormalCol;
    menuButtonsOver = false;//    menuBoxShow = false;
   }
//check inside button top, change colors - - - - - - - - - - - - - - - - 

  //BUTTONS
  fill(menuButtonsCurrentCol);
  rect(menuButtonsX, menuButtonsY, menuButtonsW, menuButtonsH);
  fill(255);
  text(textButtons, menuButtonsX+20, menuButtonsY+20);

}//menuCategories end


