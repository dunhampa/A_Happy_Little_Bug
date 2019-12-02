//Inspiration modified from:
//Static Circle Array
//by Peter Dunham 12/23/2017
// Free to use and modifed

myApplication myApp;
RndColorCircle myCir;


//myApplication 
class myApplication
{
 int diameter=25;
 int spacing=0;
 int stroke=4;
 int delay=200;


   myApplication()
   {
   for (int c=1 ; (diameter+spacing)*c-diameter/2 < width; c++)
     for (int r =1 ; (diameter+spacing)*r-diameter/2 <height ; r++)
     {
         myCir = new RndColorCircle(random(0,stroke),random(0,(diameter+spacing)*c-diameter/2),random(0,(diameter+spacing)*r-diameter/2),random(0,diameter));  
      }
    
     delay(delay);
    }  
}


class RndColorCircle
{
  RndColorCircle(float stroke, float xpos, float ypos, float diameter)
  {
  strokeWeight(stroke); 
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(xpos,ypos,diameter,diameter);    
  } 
}



//1 of 2 PROCESSING "main" program
//This runs once and is for static intializations
void setup(){
   size (2000,1000);
   background(random(0,255),random(0,255),random(0,255));
   myApp=new myApplication();
   
   String y=str(year());
   String h=str(hour());
   String m=str(minute());
   String s=str(second());
   String timestamp= y+ h + m +s;
   
   save("example_"+ timestamp+".png");
   
}

//2 of 2 PROCESSING "main" program
//this is where the dynamic stuff happens
void draw(){
   myApp=new myApplication();
   delay(2000);
}