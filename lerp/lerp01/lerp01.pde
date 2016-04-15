float x1 = 200;
float x2 = x1 + 100;
float x3 = x2 + 200;

int y = 250;
int sz = 20;

void setup () {
  size(500, 500);
}


void draw () {
//  background(20);

x = lerp(x, 350, .2);
y = 250;
fill(200);
  ellipse(x, y, sz, sz);

}

