class Walker{
 int x;
 int y;
 int spacing;
 color myColor;
 
 Walker(color newColor){
   spacing = 3;
   x = width/2;
   y = height/2;
   myColor = newColor;
 }
 void display(color theColor){
   stroke(theColor);
   point(x, y);
 }
 
 void step(){
   int stepSize = int(random(5));
   int choice = int(random(4));
   if(choice == 0){
     if(x < width){
      x+=stepSize; 
     }
    
   }
   else if(choice == 1){
     if(x > 0){
      x-=stepSize; 
     }
   }
   else if(choice == 2){
     if(y < height){
      y+=stepSize; 
     }
   }
   else if(choice == 3){
     if(y > 0){
      y-=stepSize; 
     }
   }
 }
}
Walker w;
Walker q;
Walker v;
Walker m;
void setup(){
 size(2000, 1000);
 m = new Walker(color(random(255), random(255), random(255)));
 v = new Walker(color(random(255), random(255), random(255)));
 w = new Walker(color(random(255), random(255), random(255)));
 q = new Walker(color(random(255), random(255), random(255)));
 background(0);
}
void draw(){
  m.step();
  m.display(color(random(255), 0, 255));
  v.step();
  v.display(color(255, random(255), 0));
  q.step();
  q.display(color(0, 255, random(255)));
  w.step();
  w.display(color(random(255), 255, 255));
}