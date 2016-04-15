int posX;
//ARTICLES TO PARSE DATA TO SCROLL TEXT
String[] articlesAll;
String articlesAllJoined;
String[] articlesAllSplitted;
int articleNumToScroll;
//ARTICLES TO PARSE DATA TO SCROLL TEXT


void setup(){
  size(1200, 800);
  background(50);
  posX = 20;
  textSize(10);
  //ARTICLES TO PARSE DATA TO SCROLL TEXT
  articlesDataParser();
}


void draw(){
  background(50);  
  text(articlesAll[1], posX, 20, 200, 700);
  text(articlesAllJoined, posX*12, 20, 200, 700);

  text(articlesAllSplitted[articleNumToScroll], posX*24, 20, 200, 700);
}


//ARTICLES TO PARSE DATA TO SCROLL TEXT
void articlesDataParser(){
  articleNumToScroll = 0;
  articlesAll =  loadStrings("articlesAll.txt");
  articlesAllJoined = join(articlesAll, " ");
  articlesAllSplitted = split(articlesAllJoined, "*");

}//ARTICLES TO PARSE DATA TO SCROLL TEXT
 
 
void mouseReleased(){
    articleNumToScroll++;
}
