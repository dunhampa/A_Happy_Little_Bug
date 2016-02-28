//Creates a gif
//Future work is to create an array/colleciton of images
//To cycle through



GifMaker gifExport;
PImage myImage;

import gifAnimation.*;    // import the gifAnimation library


void setup() {
  size(400, 400,P3D);
  background(255);
  
  frameRate(1);

  gifExport = new GifMaker(this, "export.gif");
  gifExport.setRepeat(0);             // make it an "endless" animation
  gifExport.setTransparent(255,255,255);    // black is transparent
 
}


void draw() {
   
  myImage=loadImage("BootstrapPic.png");
   
  beginShape(); 
         strokeWeight(20);
         int cir_xpos=200;//400
         int cir_ypos=200;//400
         int cRadius=375;//750
      
            for (int i = 0; i<100; i++) 
            { 
              float stepFac = 2*PI*(float(i)/100); 
              vertex(cir_xpos+cRadius/2*sin(stepFac),cir_ypos+cRadius/2*cos(stepFac),(sin(stepFac)+1)/2,(cos(stepFac)+1)/2); 
            } 
            texture(myImage); 
   endShape(CLOSE);
  
   gifExport.setDelay(3000);
   gifExport.addFrame();
  
   delay(3000);
  
}


void mousePressed() {
    gifExport.finish();                 // write file
}

