Mover mover;

void setup(){
 size(1920,1080);
 mover = new Mover();
}

void draw(){
 background(255);
 
 mover.update();
 mover.display();
}
class Mover{
  PVector location;
  PVector velocity;
  Mover(){
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(-2, 2), random(-2, 2));
  }
  void update(){
   location.add(velocity); 
  }
  
  void display(){
   stroke(132, 69, 19);
   fill(175);
   ellipse(location.x, location.y, 160, 160);
  }
  
  
}