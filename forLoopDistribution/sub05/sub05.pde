size(1000, 700);
background(80);
noStroke();

// /*
int sz = 40;
//SIMULATION INTERFACE
fill(20, 100, 200);
  rect(0, 0, sz, sz);
fill(20, 160, 180);
  rect(sz, 0, sz, sz);
fill(20, 160, 100);
  rect(sz*2, 0, sz, sz); textSize(18);
fill(20, 130, 80);
  rect(sz*3, 0, sz, sz);

fill(180);
  rect(0, sz, sz*4, sz);
fill(240);
  text("TITLE SECTION", 10, sz+25);


fill(40, 50, 60);//boc topics
  rect(0, sz*3, sz*4, sz);
fill(50, 60, 80);
  rect(0, sz*4, sz*4, sz*20);//boc topics
// */

int[] cat = {2,1,1,1,1,1,1,2,2,2,1,1,1,1,1,2,1,2,9,1,2,1,2,1,2,3,2,2,3,2,1,5,1,1,1,1,2,2,2,1,3,2,2,2,1,2,1,1,1,1,1,2,5,4,4,1,1,3,2,1,3,2,1,4,3,3,2,2,1,1,2,2,1,2,1,1,2,3,4,1,2,1,1,3,2,2,2,2,1,1,1,1,3,8,2,3,2,1,2,3,1,2,1,1,2,1,2,2,1,2,1,2,1,3,1,3,1,1,3,2,1,1,1,1,2,1,2,1,2,2,2,1,2,1,1,1,1,1,2,1,1,1,1,2,3,2,1,1,1,1,1,1,1,1,2,1,1};


int[] articlesIdNumber = { 
  1, 2, 3, 4, 5, 6, 7, 8, 9, 
  10,11,12,13,14,15,16,17,18, 
  19,20,21,22,23, 
  24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,
  47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,
  77,78,79,80,81,82,83,
  84,85,86,87,88,89,90,91,92,
  93,94,95,
  96,97,98,
  99,100,101,
  102,103,104,105,106,
  107,108,
  109,110,
  111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,
  129,130,131,
  132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157  
};
int[] articlesChapterStart = { 1, 8,18,35,42,
                              55,65,72,89,98,
                              102,110,115,130,139, 149, 152};

//2- Storing in arrays
int bWstart = 35;
int bHstart = 11;
int posXstart = 220;
int posYstart = 190;
int[] bH = new int[cat.length];
int[] posY = new int[cat.length+1];
int newPosX = 0;
int newPosY = 0;
int countToRight = 0;
int sep = 1;

posY[0] = 0;

//FOR POSITION Y
for(int i=0; i<cat.length; i++){
  fill(200);
  //CHECK CATEGORY
  if(cat[i]==1){ bH[i] = bHstart*1; }
  if(cat[i]==2){ bH[i] = bHstart*2; }
  if(cat[i]==3){ bH[i] = bHstart*3; }
  if(cat[i]==4){ bH[i] = bHstart*4; }
  if(cat[i]==5){ bH[i] = bHstart*5; }
  if(cat[i]==6){ bH[i] = bHstart*6; }
  if(cat[i]==7){ bH[i] = bHstart*7; }
  if(cat[i]==8){ bH[i] = bHstart*8; }
  if(cat[i]==9){ bH[i] = bHstart*12; }
  if(cat[i]==10){ bH[i] = bHstart*10; }

  
 //CHECK THE STARTING ARTICE NUMBER TO ASIGN NEW X POS TO THE RIGHT
  for(int j=0; j<articlesChapterStart.length; j++){
    if(articlesIdNumber[i] == articlesChapterStart[j]){
       posY[i] = 0;
       posY[i+1] = posY[i]+bH[i];  
       countToRight++; 
    }else{
       posY[i+1] = posY[i]+bH[i];  
    }
  }//CLOSE LOOP
  
  //STORE NEW POSITIONS
  newPosX = posXstart + bWstart*countToRight;
  newPosY = posYstart + posY[i] + sep;

  rect( newPosX ,newPosY  , bWstart-sep*5, bH[i]-sep );

textSize(8);fill(100);
text(i+1, 2+newPosX, newPosY+8);
}

