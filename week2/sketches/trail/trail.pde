
ArrayList<PVector> positions = new ArrayList<PVector>();

void setup() {
  size(500, 500);
  noFill();
  stroke(255);
}


void draw() {
  background(0);
  
  beginShape();
  for (PVector pos : positions) {
    vertex(pos.x, pos.y);
  }
  endShape();
  
  
}

void mouseMoved() {
  positions.add(new PVector(mouseX, mouseY));
  if (positions.size() > 20) {
    positions.remove(0);
  }
}
