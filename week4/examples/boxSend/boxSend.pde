import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress location;

void setup() {

  oscP5 = new OscP5(this, 9999);

  location = new NetAddress("127.0.0.1", 3456);
  size(500, 500);
}

void draw() {
}

void mouseDragged() {
  OscMessage message = new OscMessage("/box");

  float[] position = { mouseX, 0, mouseY };
  message.add(position);

  oscP5.send(message, location);
  println(mouseX);
}
