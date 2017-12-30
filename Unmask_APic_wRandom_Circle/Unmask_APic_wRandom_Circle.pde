PImage img;
PGraphics mask;
 
void setup(){
  size (1000, 1000);

  img = loadImage("download.jpg");
  //mask = createGraphics(width, height);
  mask = createGraphics(1000, 1000);
  background(40);
}
 
void draw(){
   background(255, 255, 255);
  mask.beginDraw();
  mask.noStroke();
  mask.fill(255);
  mask.ellipse(random(width), random(height), 100, 100);
  mask.endDraw();
 
  img.mask(mask);
  image(img, 0 ,0);
}