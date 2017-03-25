Mover mover;
 
void setup() {
  size(1920,1080);
  mover = new Mover();
}
 
void draw() {
  background(255);
 
  mover.update();
  mover.checkEdges();
  mover.display();
}
 
class Mover {
 
  PVector location;
  PVector velocity;
  color fill;

 
  Mover() {
    location = new PVector(random(width),random(height));
    velocity = new PVector(random(-2,2),random(-2,2));
  }
 
  void update() {
    location.add(velocity);
  }
 
  void display() {
    stroke(0);
    fill(fill);
    ellipse(location.x,location.y,160,160);
  }
 
  void checkEdges() {
    if (location.x > width) {
      //location.x = 0;
      fill = color(random(255), random(255), random(255));
      velocity.x = velocity.x * -1;
    } else if (location.x < 0) {
      fill = color(random(255), random(255), random(255));
      //location.x = width;
      velocity.x = velocity.x * -1;
    }
 
    if (location.y > height) {
      //location.y = 0;
      fill = color(random(255), random(255), random(255));
      velocity.y = velocity.y * -1;
    } else if (location.y < 0) {
      //location.y = height;
      fill = color(random(255), random(255), random(255));
      velocity.y = velocity.y * -1;
    }
  }
}