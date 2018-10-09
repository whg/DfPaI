
float rotation = 0;
int numRows = 80;
int dotsPerRow = 100;
PVector[] positions;
PVector[] randomPoints;

float rowSpacing = 10;
float sideLength = rowSpacing * (numRows - 1);
float halfSideLength = sideLength / 2;
float circleRadius = 215;
float sphereYOffset = 300;
float sphereFraction = 0.91;
float minYPos = 0;

// place points in rows and around a sphere
void generate() {
  for (int rowNumber = 0; rowNumber < numRows; rowNumber++) {
    for (int j = 0; j < dotsPerRow; j++) {
      float x = rowNumber * rowSpacing;
      float y = 0;
      //float z = random(0, sideLength);
      float z = randomGaussian() * halfSideLength * 0.4 + halfSideLength;

      float d = dist(x, z, halfSideLength, halfSideLength);
      if (d < circleRadius) {
        float h = sqrt(circleRadius * circleRadius - d * d);
        if (d > circleRadius * sphereFraction && random(1) < 0.2) {
          y = h - sphereYOffset;
        } else {
          y = -h - sphereYOffset;
        }
      }
      
      int index = rowNumber * dotsPerRow + j;
      positions[index] = new PVector(x, y, z);
    }
  }
}

// returns random points for each point in positions
PVector[] generateRandomPoints() {
  PVector[] points = new PVector[positions.length];
  for (int i = 0; i < positions.length; i++) {
    float x = random(sideLength);
    float y = -random(sideLength);
    float z = random(sideLength);
    points[i] = new PVector(x, y, z);
  }
  return points;
}

void setup() {
  fullScreen(P3D);
  noStroke();
  fill(50);

  positions = new PVector[numRows * dotsPerRow];  

  generate();
  
  randomPoints = generateRandomPoints();
}

void draw() {

  camera(width / 2, height / 2 - 197, 415, 
         width / 2, height / 2, 0, 
         0, 1, 0);
  
  background(190);
  translate(width / 2, height / 2 + 160, 0);
  scale(0.4, 0.4, 0.4);

  rotateY(radians(rotation));
  translate(-halfSideLength, 0, -halfSideLength);

  float q = map(mouseX, 0, width, 0, 1);
  //q = 1;
  
  for (int i = 0; i < positions.length; i++) {
    pushMatrix();
    PVector a = positions[i];
    PVector b = randomPoints[i];
    float x = lerp(a.x, b.x, q);
    float y = lerp(a.y, b.y, q);
    float z = lerp(a.z, b.z, q);
    
    //PVector o PVector.add(PVector.mult(positions[i], q), PVector.mult(randomPoints[i], 1-q));

    translate(x, y, z);
    box(2);
    popMatrix();
  }

  rotation += 0.1;
}

void keyPressed() {
  //goRandom();
}
