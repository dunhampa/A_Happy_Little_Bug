PGraphics pg;
RndColorCircle myCir;
CircStack circles;
PImage myImage;

class CircStack
{
 int diameter=250;
 int spacing=20;//10
 int stroke=2;//1
 int delay=100;
 int appWidth=750;
 int appHeight=750;

 CircStack(PGraphics pgrap)
 {
   for (int c=1 ; diameter/2+spacing*c-diameter/2 < width; c++)
     for (int r =1 ; (diameter+spacing)*r-diameter/2 <height ; r++)
     {
       myCir = new RndColorCircle(pgrap,stroke,diameter/2+spacing*c-diameter/2,(diameter+1)*r-diameter/2,diameter);
       //myCir = new RndColorCircle(pgrap,stroke,diameter/2+spacing*c-diameter/2,(diameter+spacing)*r-diameter/2,diameter);
     }
   delay(delay);
   
   
 }
  
}

class RndColorCircle
{

  RndColorCircle(PGraphics pgraph, int stroke, int xpos, int ypos, int diameter)
  {
    pgraph.beginDraw();
    pgraph.strokeWeight(stroke); 
    pgraph.fill(random(0,255),random(0,255),random(0,255));
    pgraph.ellipse(xpos,ypos,diameter,diameter); 
    pgraph.endDraw();
  }
  
}




void setup() {
  size(1000, 1000,P3D);
  background(255);
  pg = createGraphics(750, 750);
}


void draw() {
  //myCir = new RndColorCircle(pg, 10, 200, 200, 50);
  circles=new CircStack(pg);
  myImage=pg;
  //image(myImage, 0, 0); 
  
  beginShape(); 
         strokeWeight(40);
         int cir_xpos=400;
         int cir_ypos=400;
         int cRadius=750;
      
            for (int i = 0; i<100; i++) 
            { 
              float stepFac = 2*PI*(float(i)/100); 
              vertex(cir_xpos+cRadius/2*sin(stepFac),cir_ypos+cRadius/2*cos(stepFac),(sin(stepFac)+1)/2,(cos(stepFac)+1)/2); 
            } 
            texture(myImage); 
          endShape(CLOSE);
  
  
  
  
  
  
  
  
  
  
  delay(500);
  //image(pg, 51, 30);
}
