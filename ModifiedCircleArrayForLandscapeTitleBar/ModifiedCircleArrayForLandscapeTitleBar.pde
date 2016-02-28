//Full_Random_Color_Circle
//by Peter Dunham 12/28/2015
// Free to use and modify

myApplication myApp;
RndColorCircle myCir;
PFont myFont;


//myApplication 
class myApplication{
 int diameter=25;
 int spacing=7;
 int stroke=5;
 int delay=100;
 int appWidth=750;
 int appHeight=750;
 //int col_hghts[]={3,3,2,2,1,1,1,1,2,2,2,2,3,3,3,4,5,6,7,8,8,12,14}; 
 int[] a={3,3,2,2,1,1,1,1,2,2,2,2,3,3,3,4,5,6,7,8,8,12,14}; 
 //int[] b={3,2,1,3,3,3,3,3,3,4,3,4,2,1,2,3,3,3,4,5,3,3,3,3,}; 
 int[] b={13,12,11,9,8,12,10,11,13,14,13,14,12,11,14,13,12,9,8,7,6,5,8,13}; 
 int[]d=reverse(a); 
 //int[] col_hgths_tmp={};
 //int[] col_hgths={};
 
  //col_hgths_tmp = concat(col_hghtsa,col_hghtsb);
  int[]colheightstemp = concat(a,b);
int[]colheights=concat(colheightstemp,d);

 myApplication(){
   
   
    
  background(255,255,255);
   for (int c=1 ; ((diameter+spacing)*c-diameter/2 < width); c++)
   {
     //delay(delay);
     for (int r =1 ; ((diameter+spacing)*r-diameter/2 <height) & (r-1<colheights[c-1]) ; r++)
     {
        //delay(delay);
        //print(col_hghts[c-1]);
        myCir = new RndColorCircle(stroke,((diameter+spacing)*c-diameter/2),height-((diameter+spacing)*r-diameter/2),diameter);  
     }
   }
   //delay(delay);
 }
 
  
}

//RndColorCirlce
class RndColorCircle{
  RndColorCircle(int stroke, int xpos, int ypos, int diameter){
    strokeWeight(stroke); 
    fill(random(0,255),random(0,255),random(0,255));
    ellipse(xpos,ypos,diameter,diameter);  
  }
  
}



//1 of 2 PROCESSING "main" program
//This runs once and is for static intializations
void setup(){
   size (2250,500);
   background(255,255,255);
   
   // Uncomment the following two lines to see the available fonts 
   String[] fontList = PFont.list();
   printArray(fontList);
   //myFont = createFont("SansSerif.bold", 48);
   //myFont = createFont("Adobe Fan Heiti Std-Bold", 51);
   myFont = createFont("Arial", 72);//48
   textFont(myFont);
   //textAlign(CENTER, CENTER);
   
   
   
   
   myApp=new myApplication();
   
   fill(0, 0, 0);
   //text("1 Programming Language", 10, 80);
   //text("A Week", 10, 140);
   //text("For A Year", 10, 200);
   //text("", 10, 80);
  // text("Peter Dunham's", 890, 170);
   //text("Technology Portfolio", 810, 264);
   myFont = createFont("Arial", 75);
   textFont(myFont);
   //text("*", 575, 100);
   String y=str(year());
   String h=str(hour());
   String m=str(minute());
   String s=str(second());
   String timestamp= y+ h + m +s;
   
   save("test"+ timestamp+".png");
}

//2 of 2 PROCESSING "main" program
//this is where the dynamic stuff happens
void draw(){  
   //myApp=new myApplication();
   
}
