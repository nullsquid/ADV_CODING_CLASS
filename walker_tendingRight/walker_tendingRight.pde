class Walker{
 int x;
 int y;
 int spacing;
 
 Walker(){
   x = width/2;
   y = height/2;
   spacing = 3;
 }
 void Display(color walkColor){
   stroke(walkColor);
   point(x, y);
 }
 
 void Step(){
  float r = random(1);
  if(r < 0.4){
   x++; 
  }
  else if(r < 0.6){
   x--; 
  }
  else if(r < 0.8){
   y++; 
  }
  else{
   y--; 
  }
 }
}
Walker w;
Walker q;
Walker e;
void setup(){
 size(2000, 1000);
 w = new Walker();
 //q = new Walker();
 background(0);
}

void draw(){
 w.Step();
 w.Display(color(random(255), 255, 255));
 
}