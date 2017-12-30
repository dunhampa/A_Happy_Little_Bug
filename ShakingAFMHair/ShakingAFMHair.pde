//Test commit
float lineSpeed;
float angle;
float distance;
float endDistance;
float jitter;

void setup(){
  size(420,420);
  smooth();
  lineSpeed = 1;
  angle = PI/6;
  distance = 0;
  endDistance = 350;
}
void draw(){
 background(255);
 if(distance < endDistance){
  distance += lineSpeed;
 }
 line(30,100,30+cos(angle)*distance,100+sin(angle)*distance);
 jitter = random(-0.1, 0.1);
   angle = angle + jitter;
  float c = cos(angle);
  translate(width/2, height/2);
  rotate(c);
 //can also be:
 //translate(30,100);
 //line(0,0,cos(angle)*distance,sin(angle)*distance);
}