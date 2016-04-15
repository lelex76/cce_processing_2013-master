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

public class returnvalues01 extends PApplet {
  public void setup() {
String sentence = " The The quick brown fox jumps over the lazy dog.\u009d";
System.out.println("The: " + sentence.indexOf("The"));
System.out.println(sentence.indexOf("fo"));
System.out.println(sentence.indexOf("The"));
System.out.println(sentence.indexOf("blah blah"));

// int timestwo(int dVal) {
//   dVal = dVal * 2;
//   return dVal;  // Returns an int of 60, in this case
// }


// int compras() {
//   int[] precios = { 5, 5, 5, 5, 5}; 
//   int _val = 0;

//   for (int i=0; i<precios.length; i++) {
//     _val += precios[i];
//   }

//   return _val;
// }



// void draw() {
//   int t = timestwo(45);
//   text(t, 20, 20);

//   text(compras(), 20, 50);


// }

    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "returnvalues01" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
