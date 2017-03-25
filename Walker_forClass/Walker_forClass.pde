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
  int choice = int(random(4));
  if(choice == 0){
   x+=random(10); 
  }
  if(choice == 1){
   x-=random(10); 
  }
  if(choice == 2){
   y+=random(10); 
  }
  if(choice == 3){
   y-=random(10); 
  }
 }
}
Walker w;
Walker q;
Walker e;
void setup(){
 size(2000, 1000);
 w = new Walker();
 q = new Walker();
 background(0);
}

void draw(){
 w.Step();
 w.Display(color(random(255), 255, 255));
 q.Step();
 q.Display(color(255, random(255), 255));
 
}