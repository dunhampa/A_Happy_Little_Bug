//Full_Random_Color_Circle
//by Peter Dunham 12/28/2015
// Free to use and modify

myApplication myApp;
RndColorCircle myCir;
PFont myFont;


//myApplication 
class myApplication{
 int diameter=290;
 int spacing=10;
 int stroke=20;
 int delay=100;
 int appWidth=320;
 int appHeight=320;

 myApplication(){
   
  background(255,255,255);
  myCir = new RndColorCircle(stroke,((diameter+spacing+stroke)-diameter/2-stroke),((diameter+spacing+stroke)-diameter/2-stroke),diameter); 
 
  
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
   size (320,320);
   background(255,255,255);
   
   // Uncomment the following two lines to see the available fonts 
   String[] fontList = PFont.list();
   printArray(fontList);
   //myFont = createFont("SansSerif.bold", 48);
   //myFont = createFont("Adobe Fan Heiti Std-Bold", 51);
   myFont = createFont("Arial", 45);//72
   textFont(myFont);
   fill(0, 0, 0);
   text("CSS", 85, 105);
   
   
   
   //textAlign(CENTER, CENTER);
   
   
   
   
   myApp=new myApplication();
   
   myFont = createFont("Arial", 35);//72
   textFont(myFont);
   fill(0, 0, 0);
   text("CSS", 115, 90);
   
   myFont = createFont("Arial", 53);//72
   textFont(myFont);
   text("Bootstrap3", 30, 160);
   
   myFont = createFont("Arial", 35);//72
   textFont(myFont);
   text("HTML5", 100, 230);
   
   
 
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