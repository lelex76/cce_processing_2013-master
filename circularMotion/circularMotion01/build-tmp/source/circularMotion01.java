import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class circularMotion01 extends PApplet {

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


public void setup() {
  size(w, h);
  println(theta);
}

public void draw () {
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

    theta += 0.05f; //Steps


  println(x);
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "circularMotion01" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
