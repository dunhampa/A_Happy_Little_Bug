//tatic Circle Array
//by Peter Dunham 12/23/2017
// Free to use and modify




myApplication myApp;
RndColorCircle myCir;


//myApplication 
class myApplication
{
 int diameter=25;
 int spacing=7;
 int stroke=5;
 int delay=200;
 //int appWidth=750;
 //int appHeight=750;

   myApplication()
   {
   for (int c=1 ; (diameter+spacing)*c-diameter/2 < width; c++)
     for (int r =1 ; (diameter+spacing)*r-diameter/2 <height ; r++)
     {
         myCir = new RndColorCircle(stroke,(diameter+spacing)*c-diameter/2,(diameter+spacing)*r-diameter/2,diameter);  
      }
    
     delay(delay);
    }  
}


class RndColorCircle
{
  RndColorCircle(int stroke, int xpos, int ypos, int diameter)
  {
  strokeWeight(stroke); 
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(xpos,ypos,diameter,diameter);    
  } 
}



//1 of 2 PROCESSING "main" program
//This runs once and is for static intializations
void setup(){
   size (615,100);
   background(255,255,255);
   myApp=new myApplication();
   
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









 
  





   
   
   
   

 