PVector location;
PVector velocity;

color fillColor;
color from = color(105, 66, 255);
color to = color(3, 200, 130);
void setup(){
 size(1920, 1080);
 location = new PVector(100, 100);
 velocity = new PVector(2.5, 5);
}

void draw(){
 background(255);
 location.add(velocity);
 
 if((location.x > width) || (location.x < 0)){
   velocity.x = velocity.x * -1;
   fillColor = color(random(255), random(255), random(255));
 }
 if((location.y > height) || (location.y < 0)){
  velocity.y = velocity.y * -1; 
  fillColor = color(random(255), random(255), random(255));
 }
 
 stroke(0);
 fill(fillColor);
 ellipse(location.x, location.y, 100, 100);
}