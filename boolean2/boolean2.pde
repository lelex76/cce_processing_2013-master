
boolean oneOn = false;
boolean twoOn= false;
boolean treeOn= false;

int col1, col2, col3;

void setup() {
  size(500, 500);
  col1 = 0;
  col2 = 0;
  col3 = 0;
}


void draw() {
  //1
  fill(col1);
  rect(100, 100, 50, 50);
  //2
  fill(col2);
  rect(200, 100, 50, 50);
  //3
  fill(col3);
  rect(300, 100, 50, 50);

  if (keyPressed) {
    if (key == '1') {
      oneOne = true;
    }
  }


if(oneOn){
      col1 = 200;
}else if(!oneOn) {
      col1 = 200;
}|
  
}//close draw 


