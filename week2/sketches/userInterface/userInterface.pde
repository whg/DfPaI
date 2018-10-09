import controlP5.*;

ControlP5 cp5;

int backgroundColour = 0;
int rectColour = 255;

void setup() {
  size(512, 512);
  
  cp5 = new ControlP5(this);
  
  cp5.addSlider("backgroundColour").setRange(0, 255).setPosition(30, 30);
  cp5.addSlider("rectColour").setRange(0, 255).setPosition(30, 50);

}

void draw() {
  background(backgroundColour);
  
  fill(rectColour);
  rect(100, 100, 100, 100);
}

void keyPressed() {
 
  if (key == ' ') {
    if (cp5.isVisible()) {
      cp5.hide();
    } else {
      cp5.show();
    }
  }
}
