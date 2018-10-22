
class BaseParticle {
  PVector pos;
  BaseParticle(float x, float y) {
    pos = new PVector(x, y);
  }
  
  void render() {}

  void draw() {
    pushMatrix();
    rotate(0.1);
    render();
    popMatrix();
  }
}

class RectangleParticle extends BaseParticle {
  RectangleParticle(float x, float y) {
    super(x, y);
  }

  void render() {
    rect(pos.x, pos.y, 20, 20);
  }
}

class RedRectangleParticle extends RectangleParticle {
  RedRectangleParticle(float x, float y) {
    super(x, y);
  }

  void render() {
    pushStyle();
    fill(255, 0, 0);
    rect(pos.x, pos.y, 20, 20);
    popStyle();
  }
}

class CircleParticle extends BaseParticle {
  CircleParticle(float x, float y) {
    super(x, y);
  }

  void render() {
    ellipse(pos.x, pos.y, 20, 20);
  }
}

ArrayList<BaseParticle> particles = new ArrayList<BaseParticle>();

void setup() {
  size(500, 500);
}


void draw() {
  background(0);
  for (BaseParticle p : particles) {
    p.draw();
  }
}

void keyPressed() {

  if (key == 'a') {
    particles.add(new CircleParticle(mouseX, mouseY));
  } else if (key == 's') {
    particles.add(new RectangleParticle(mouseX, mouseY));
  } else if (key == 'q') {
    particles.add(new RedRectangleParticle(mouseX, mouseY));
  }
}
