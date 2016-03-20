//Must use older Proccessing to run = Processing 2.0

// Little program for displaying one animated GIF
// based on the gifAnimation library by Extrapixel 
// http://extrapixel.github.io/gif-animation/ 

GifMaker gifExport;
PGraphics pg;
import gifAnimation.*;    // import the gifAnimation library

Gif myAnimation;          // create Gif object called myAnimation

void setup() {
  
  size(325,325,P3D);          // window size (pixels), use(displayWidth, 
                              // displayHeight)for fullscreen size
  
  myAnimation = new Gif(this, "Bootstrap.gif");
                                             // load animated GIF file from 
                                            // the data folder, replace 
                                           // "img01.gif" with the name of 
                                          // your GIF file

  myAnimation.play();                      // play the animated GIF
  
  frameRate(6);

  gifExport = new GifMaker(this, "export.gif");
  gifExport.setRepeat(0);             // make it an "endless" animation
  gifExport.setTransparent(255,255,255);    // black is transparent
  
}


void draw() {
 
 background(255);             // window background color, 255 = white, 0 = 
                              // black, RGB values e.g. (43,170,224)
 
 
  
  beginShape(); 
      strokeWeight(20);
      int cir_xpos=155;
      int cir_ypos=155;
      int cRadius=290;
      
      for (int i = 0; i<100; i++) 
      { 
        float stepFac = 2*PI*(float(i)/100); 
        vertex(cir_xpos+cRadius/2*sin(stepFac),cir_ypos+cRadius/2*cos(stepFac),(sin(stepFac)+1)/2,(cos(stepFac)+1)/2); 
      } 
      
      texture(myAnimation);
      
  endShape(CLOSE);
  
   gifExport.setDelay(5);
   gifExport.addFrame();

 }

void mousePressed() {
    gifExport.finish();                 // write file
}

