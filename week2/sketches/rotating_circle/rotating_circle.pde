
float angle = 0;
float orbitRadius = 200;
float circleRadius = 180;
float speed = 0.05;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);

  translate(width / 2, height / 2);

  fill(255);
  ellipse(0, 0, orbitRadius * 2, orbitRadius * 2);

  float x = cos(angle) * (orbitRadius - circleRadius);
  float y = sin(angle) * (orbitRadius - circleRadius);

  fill(0);
  ellipse(x, y, circleRadius * 2, circleRadius * 2);

  angle += speed;
}
