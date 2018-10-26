import peasy.*;

Table table;
PeasyCam cam;
float moonRadius = 1737.1; // in km

void setup() {
  size(640, 640, P3D);
  stroke(255);
  noFill();

  cam = new PeasyCam(this, 2000);
  
}

void draw() {
  background(0);
 
}
