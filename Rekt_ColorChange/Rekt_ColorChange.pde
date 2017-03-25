class Rekt{
 color theColor;
 
 public void ChangeColor(int xPos, int yPos){
   theColor = color(xPos, yPos, xPos);
 }
 
 public Rekt(color newColor){
   theColor = newColor;
 }
 void Draw(){
   fill(theColor);
   rect(width/2,height/2,100,100);
 }
}
Rekt r;
void setup(){
  size(500,500);
  r = new Rekt(color(255,0,0));
}
void draw(){
  
  r.Draw();
  r.ChangeColor(mouseX, mouseY);
}