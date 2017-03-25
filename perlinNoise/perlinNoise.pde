  float inp = 0.0;
  float xoff = 0.0;
void setup(){
  size(1920, 1080);
  frameRate(60);
  loadPixels();
}

void draw(){
float inp = 0.0;
for (int x = 0; x < width; x++) {
  float yoff = 0.0;
  for (int y = 0; y < height; y++) {
    float bright = map(noise(xoff,inp * yoff),0,1,0,255);;
    pixels[(x)+(y*width)] = color(bright,mouseY,inp);
    yoff += 0.01;
  }
  xoff += 0.01;
}
  inp = random(255);
  updatePixels();
}