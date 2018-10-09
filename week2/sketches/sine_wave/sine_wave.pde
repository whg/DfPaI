
void setup() {

  size(500, 500);
  noFill();
  stroke(255);
  background(0);
}

void draw() {
  background(0);

  translate(0, height / 2);

  beginShape();
  for (int i = 0; i < width; i++) {
    float angle = map(i, 0, width, 0, TWO_PI * mouseX / 10);
    float value = sin(angle);
    vertex(i, -value * height / 4);
  }
  endShape();
}
