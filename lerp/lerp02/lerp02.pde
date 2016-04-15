float w;
float h;

String txt = "construct entire virtul reality? kruger says is omst important the body embodiment. uestioning ocular centric model. todat=y, more ";
float lerpFactor = 0.05; 

float x1 = 100;
float x2 = x1 + 150;
float x3 = x2 + 200;
float xCurrent = x1;
int y = 250;
int sz = 20;

void setup () {
  size(500, 500);
  background(100);
  w = width;
  h = height;

}


void draw () {
  background(100);

  if (keyPressed == true) {
    // 1
    if (key == '1') {
      xCurrent = lerp(xCurrent, x1, lerpFactor);
    }
    // 2
    if (key == '2') {
      xCurrent = lerp(xCurrent, x2, lerpFactor);
    }
    // 3
    if (key == '3') {
      xCurrent = lerp(xCurrent, x3, lerpFactor);
    }

  }
  
    fill(200);
    //1 rect moving
    rect(xCurrent, 100, sz, sz);

    //2 rect changing size
    rect(w-200, 200, 150 - xCurrent, 100);
    fill(0);
    text(txt, w-200, 200, 150 - xCurrent, 100);

    //3
  
//    beginShape();
//    fill(200);
//        vertex(w/2, h/2);
//        bezierVertex(w/2+50, h/2, w/2, h/2-50, 50, h/2-50);
//
////        vertex(0, 20);
////        bezierVertex(0, -35, 80, 10, 0, 60);
////        vertex(0, 20);
////        bezierVertex(0, -35, -80, 10, 0, 60);
//    endShape();


  beginShape();
    fill(10);
    noStroke();
    smooth();
    bezier(0,40,  60,40,  50,160,  100,40);
//    bezier(40,47,20,30,20,60,40,73);
  endShape();



}

