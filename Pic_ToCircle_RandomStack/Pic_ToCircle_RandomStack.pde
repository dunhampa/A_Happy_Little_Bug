specCircle [] mods;

//circle definition
class specCircle {
  //specCircle data
    int cir_height=100;
    int cir_width=100;
    int cir_xpos=100;
    int cir_ypos=100;
  
  specCircle(){
    cir_height=100;
    cir_width=100;

  }
  
  void cir_draw(){
    cir_xpos=int(random(0,500));
    cir_ypos=int(random(0,500));
PImage img = loadImage("Tulips.jpg");
//beginShape();


 strokeWeight(10); 
    //fill(255,0,0);
     //ellipse(cir_xpos,cir_ypos,100,100);
//texture(img);
//endShape();
   float cRadius=125;
textureMode(NORMAL); 
beginShape(); 

for (int i = 0; i<100; i++) { 
      float stepFac = 2*PI*(float(i)/100); 
      vertex(cir_xpos+cRadius/2*sin(stepFac),cir_ypos+cRadius/2*cos(stepFac),(sin(stepFac)+1)/2,(cos(stepFac)+1)/2); 
} 
texture(img); 
endShape(CLOSE);     
    
    
    
    
   
  }
}

void setup(){
size(500,500,P3D);
//specCircle circ1;

mods = new specCircle[5];
  //int index = 0;
    for (int index = 0; index < 4; index++) {
      mods[index] = new specCircle();
      mods[index].cir_draw();

    }
}
 void draw(){
     for (int index = 0; index < 4; index++) {
   
      mods[index].cir_draw(); 
     }
}

//specCircle circ1;
//circ1=new specCircle();
//circ1.cir_draw();