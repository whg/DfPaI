class Particle {
  float angle, radius;
  float rotationSpeed;
  PVector amts;
  String name;
  
  Particle(float radius, float speed) {
    this.name = name;
    angle = random(0, TWO_PI);
    this.radius = radius;
    rotationSpeed = speed;
    amts = new PVector(random(1), random(1), random(1));
  }

  void update() {
    angle += rotationSpeed;
  }

  void draw() {
    pushMatrix();
    rotateX(angle * amts.x);
    rotateY(angle * amts.y);
    rotateZ(angle * amts.z);
    translate(radius, 0, 0);
    rotateZ(-angle * amts.z);
    rotateY(-angle * amts.y);
    rotateX(-angle * amts.x);
    rotateY(-rotationY);
    text(name, 0, 0);
    popMatrix();
  }
}
