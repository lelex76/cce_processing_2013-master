//TEXT BOX ELEMENTS - INFO & TOPICS
ButCircle butCircle1, butCircle2 ;
boolean textBoxUp;
float textBoxPosY;


void setup(){
size(600, 600);
background(2);

//TEXT BOX ELEMENTS - INFO & TOPICS  textBoxUp = false; 
  textBoxUp = false;
  textBoxPosY = height;
  butCircle1 = new ButCircle(100, 100, 50, "open");
  butCircle2 = new ButCircle(500, 100, 50, "close");

}//END SETUP 


void draw() {
  background(200);

//TEXT BOX ELEMENTS - INFO & TOPICS
  textBox(50, textBoxPosY);
  butCircle1.display();
  butCircle2.display();


}

