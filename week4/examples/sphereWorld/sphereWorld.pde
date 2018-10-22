import netP5.*;
import oscP5.*;

float rotationY = 0;
ArrayList<Particle> particles = new ArrayList<Particle>();
OscP5 oscP5;

void setup() {
  size(500, 500, P3D);

  oscP5 = new OscP5(this, 2345);

  noStroke();
}

void draw() {
  background(0);
  lights();
  //directionalLight(255, 255, 255, -1, 0, 0);

  translate(width / 2, height / 2);
  rotationY = map(mouseX, 0, width, 0, TWO_PI);
  rotateY(rotationY);
  scale(mouseY * 0.01, mouseY * 0.01, mouseY * 0.01);

  try {
    for (Particle particle : particles) {
      particle.update();
      particle.draw();
    }
  } 
  catch (Exception e) {
  }
}

void oscEvent(OscMessage message) {
  String address = message.addrPattern();
  
  String name = message.get(0).stringValue();
  particles.add(new Particle(name, 200, 0.01));
}
