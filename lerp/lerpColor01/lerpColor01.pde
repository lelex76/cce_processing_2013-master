color col1 = color(200, 0, 0);
color col2 = color(0, 200, 0);
color col3 = color(0, 0, 200);
color currentColor = col1;

void setup () {
  size(500, 500);
// colorMode(HSB, 100);
}


void draw () {
 
  if(keyPressed == true){
    float lerpFactor = 0.05; 
// 1
    if(key == '1'){
      currentColor = lerpColor(currentColor, col1, lerpFactor);
    }
// 2
    if(key == '2'){
      currentColor = lerpColor(currentColor, col2, lerpFactor);
    }

// 3
    if(key == '3'){
      currentColor = lerpColor(currentColor, col3, lerpFactor);
    }

  }//END KeyPressed

  fill(currentColor);
  rect(100, 100, 200, 200);
  
  

}

