
class PVector{
 float x;
 float y;
 
 PVector(float x_, float y_){
  x = x_;
  y = y_;
 }
}

float x = width/2;
float y = height/2;
float xSpeed = 1;
float ySpeed = 3.3;

//PVector location = new PVector(100,100);
//PVector velocity = new PVector(1, 3.3);

void setup(){
 size(640, 360);
 background(0);
}

void draw(){
 background(0);
 x = x + xSpeed;
 y = y + ySpeed;
 
 if((x > width) || (x < 0)){
  //xSpeed = xSpeed * -1; 
  
 }
 if((y > height) || (y < 0)){
   ySpeed = ySpeed * -1;
 }
 
 stroke(255);
 fill(175);
 ellipse(x,y,16,16);
}