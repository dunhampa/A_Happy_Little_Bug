PGraphics txt;
String url = "http://"+"psycho-therapie-toulouse.fr/wp-content/uploads/2015/06/7.jpg";
PImage photo;
 
void setup() {
  size(1000, 350);
 
  PFont font = loadFont("3ds-Light-48.vlw");
  //PFont font = loadFont("CANDYINC-210.vlw");
 //PFont font=createFont("Vladimir Script",210,true);
  txt = createGraphics(width, height);  
  txt.beginDraw();
  txt.background(0);
  txt.textAlign(CENTER, CENTER);
  txt.fill(255);
  txt.textFont(font, 48);
  txt.text("testla testla", width/2, height/2);
  txt.endDraw();
 
  photo = loadImage(url);
  photo.resize(width, height);
  photo.mask(txt);
  
  //String[] fontList = PFont.list();
//printArray(fontList);
  
}
 
void draw() {
  background(255);
  image(photo, 0, 0);
}