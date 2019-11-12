//Full_Random_Color_Circle
//by Peter Dunham 12/28/2015
// Free to use and modify

//Rotation text borrowed from:
//https://processing.org/tutorials/text/

CircleDrawer myApp;
RndColorCircle myCir;
PFont myFont;
PFont arcFont;

//for the arc
// The message to be displayed
String message = "A r d u i n o";






//CircleDrawer CLASS
class CircleDrawer{
  int diameter=290;
  int spacing=10;
  int stroke=20;
  int delay=100;
  
  CircleDrawer(){
    background(255,255,255);
    myCir = new RndColorCircle(stroke,((diameter+spacing+stroke)-diameter/2-stroke),((diameter+spacing+stroke)-diameter/2-stroke),diameter); 
  }
}

//RndColorCirlce CLASS
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
   
   //Uncomment the following two lines to see the available fonts 
     //String[] fontList = PFont.list();
     //printArray(fontList);
   
   //myFont = createFont("SansSerif.bold", 48);
   //myFont = createFont("Adobe Fan Heiti Std-Bold", 51);
   
   myFont = createFont("Arial", 45);//72
   textFont(myFont);
   fill(0, 0, 0);
 
   myApp=new CircleDrawer();
   
   myFont = createFont("Arial", 35);//72
   textFont(myFont);
   fill(0, 0, 0);
   //text("CSS", 115, 90);
   
   //Top Line
   myFont = createFont("Arial-BoldMT", 150);//72
   textFont(myFont);
   text("C" , 100, 190);
   
   //Second Line
   myFont = createFont("Arial", 20);//72
   textFont(myFont);
   text("Programming", 95, 210);
   
   /////////////////////
   /////////////////////
   
     //Making the arc
     arcFont = createFont("Arial",28,true);
     textFont(arcFont);
     // The text must be centered!
     textAlign(CENTER);
     smooth();
   
    // Start in the center and draw the circle
    translate((width-5)/2, (height-5)/ 2);
    noFill();
    stroke(0);
  
  /////////////////
  ////////////////
   
   
   myFont = createFont("Arial", 25);//72
   textFont(myFont);
   //text("Processing.org", 100, 230);
   

  
  PrintOnArc("A R D U I N O", true, 108,.85);
  PrintOnArc("E m b e d d e d", false, 125, .90);
  
   String y=str(year());
   String h=str(hour());
   String m=str(minute());
   String s=str(second());
   String timestamp= y+ h + m +s;
   
   save("test"+ timestamp+".png");
  
  
}



void PrintOnArc(String message, Boolean topArc, float radius, float offset){
  

  
  
  
  // We must keep track of our position along the curve
  float arclength = 0;

  // For every box
  for (int i = 0; i < message.length(); i++)
  {
    
    // Instead of a constant width, we check the width of each character.
    char currentChar = message.charAt(i);
    float w = textWidth(currentChar);

    // Each box is centered so we move half the width
    arclength += w/2;
    
    
    // Angle in radians is the arclength divided by the radius
    // Starting on the left side of the circle by adding PI
    float theta=0;
    
    if (topArc){
     theta = PI + arclength / radius + offset;   
    }
    else
    {
      theta = -PI - arclength / radius- offset; 
    }

    pushMatrix();
    
    // Polar to cartesian coordinate conversion
    translate(radius*cos(theta), radius*sin(theta));
    
    // Rotate the box
    if (topArc){
      rotate(theta+PI/2);
    }
    else
    {
      rotate(1*(theta+PI+PI/2)); // rotation is offset by 90 degrees
    }
    
    
    // Display the character
    fill(0);
    text(currentChar,0,0);
    popMatrix();
    
    // Move halfway again
    arclength += w/2;
  }
}





























//2 of 2 PROCESSING "main" program
//this is where the dynamic stuff happens
void draw(){  
   
   
}