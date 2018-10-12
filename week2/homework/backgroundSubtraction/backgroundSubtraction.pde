import processing.video.*;

PImage background;
Capture capture;

void setup() {
  size(640, 480);
  
  capture = new Capture(this, width, height);
  capture.start();
  
}

void draw() {
  if (capture.available()) {
    capture.read();
    
    if (background != null) {

      loadPixels();
      
      // set the pixels here!
      
      updatePixels();
      
    } else {
      image(capture, 0, 0);
    }
    
  }

}

void keyPressed() {
  background = capture.copy();
}
