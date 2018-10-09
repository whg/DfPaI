import gab.opencv.*;

PImage img;
PImage output;
OpenCV opencv;

void settings() {
  img = loadImage("cat.jpg");
  size(img.width, img.height * 2);
}

void setup() {
  opencv = new OpenCV(this, img);
}

void draw() {
  background(0);

  //opencv.blur(10);
  //opencv.contrast(2);

  opencv.loadImage(img);
  
  
  int thresholdAmount = (int)map(mouseX, 0, width, 0, 255);
  opencv.threshold(thresholdAmount);

  opencv.invert();

  output = opencv.getOutput();

  image(output, 0, 0);

  ArrayList<Contour> contours;
  contours = opencv.findContours();

  //image(output, 0, img.height);
  stroke(255);
  fill(255, 0, 0);
  println(contours.size());

  translate(0, img.height);

  for (Contour contour : contours) {
    contour.draw();
  }
}
