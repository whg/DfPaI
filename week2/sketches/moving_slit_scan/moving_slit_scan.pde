import processing.video.*;

Capture capture;
int rowNum = 0;
void setup() {
  size(640, 480);
  background(0);
  
  capture = new Capture(this, width, height);
  capture.start();
}

void draw() {
  if (capture.available()) {
    capture.read();

    loadPixels();
    if (rowNum < height) {
      for (int x = 0; x < width; x++) {
        int index = rowNum * width + x;
        pixels[index] = capture.pixels[index];
      }
      rowNum++;
    }
    updatePixels();
  }
}

void keyPressed() {
  save("shot.png");
}
