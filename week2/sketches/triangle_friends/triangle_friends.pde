
class Triangle {
  PVector pos;
  float rotation;
  float rotationSpeed;
  boolean alive;

  Triangle(float x, float y) {
    pos = new PVector(x, y);
    rotation = 0;
    rotationSpeed = 0.05; //random(0.001, 0.1);
    alive = false;
  }

  void update() {
    if (alive) {
      rotation += rotationSpeed;
    }
  }

  void draw() {
    stroke(255, 0, 120);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(rotation);
    scale(4, 4);
    triangle(-5, 2, 5, 2, 0, -10);
    popMatrix();
  }

  void comeToLife() {
    alive = true;
  }
}

ArrayList<Triangle> friends = new ArrayList<Triangle>();

void setup() {
  size(500, 500);
}

void draw() {
  background(0);

  for (Triangle t : friends) {
    t.update();
    t.draw();
  }
}

void mousePressed() {
  friends.add(new Triangle(mouseX, mouseY));
}

void keyPressed() {
  float rotation = random(0, TWO_PI);
  for (Triangle t : friends) {
    t.rotation = rotation;
  }
}
