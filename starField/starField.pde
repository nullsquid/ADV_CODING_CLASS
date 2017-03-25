import java.util.*;

Random generator;
color splatFill;
float splatterWidth = 40;
float splatterHeight = 40;
void setup(){
 size(1920, 1080);
 background(0);
 generator = new Random();
}
void draw(){
  float num = (float) generator.nextGaussian();
  float sd = 400;
  float mean = 960;
  

  float x = sd * num + mean;

  float y = random(height);
  splatFill = color(random(255), random(255), random(255));

  //noStroke();
  stroke(splatFill);
  fill(splatFill, 50);
  
  point(x, y);
  
  //rect(x, random(height), 16, 16);
  
}