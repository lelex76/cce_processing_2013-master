//CIRCULAR MOTION
//2 mar 201[A-Z][A-Z]4

int w = 500;
int h = 500;
float screenCenterX = w/2;
float screenCenterY = h/2;

float sz = 10;
float diam = 100;

//float theta = 0; //Starts at zero

float theta = 0; //Starts at zero


void setup() {
  size(w, h);
  println(theta);
}

void draw () {
  background(20);
  fill(10, 10);
  rect(0, 0, w, h);

  //LINES
  fill(200);
  line(w/2, 0, w/2, h);
  line(0, h/2, w, h/2);

//  translate(screenCenterX, screenCenterY);
  float x = screenCenterX + sin(theta) * diam ;
  float y = screenCenterY + cos(theta) * diam ;

  if (theta < TWO_PI) {
  }
    ellipse(x, y, sz, sz);

    theta += 0.05; //Steps


  println(x);
}

