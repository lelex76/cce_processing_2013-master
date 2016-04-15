

class ButtonCircle() {
  int circleX, circleY;  // Ellipse Button Pos
  int circleSize;// Ellipse diameter
  color circleColor;
  color circleHighlight;
  color currentColor;
  boolean circleOver;

  //CONSTUCTOR
  ButtonCircle() {
    circleX = 100;
    circleY = 100;
    circleSize = 100;   // Diameter of circle
    circleColor = color(50, 140, 250);
    circleHighlight = color(250, 0, 0);
    currentColor = color(50);
    circleOver = false;
  }


  //METHODS
  void update(int x, int y) {
    if ( overCircle(circleX, circleY, circleSize) ) {
      circleOver = true;
    } 
    else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
      circleOver = false;
    } 
    else {
      circleOver = rectOver = false;
    }
  }


  void mousePressed() {
    if (circleOver) {
      currentColor = circleColor;
    }
  }


  boolean overCircle(int x, int y, int diameter, color circleColor, color circleHighlight) {  
    float disX = x - mouseX;
    float disY = y - mouseY;
    if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
      return true;
    } 
    else {
      return false;
    }
  }//overCircle


  void display() {  
    ellipseMode(CENTER);

    if (circleOver) {
      fill(200, 200, 0);
    } 
    else {
      fill(0, 0, 50);
    }
    ellipse(100, 100, 50, 50);
  }//display()

}//close class

