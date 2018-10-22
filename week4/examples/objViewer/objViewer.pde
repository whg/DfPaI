
import java.util.HashSet;

PShape bunny;
// a set doesn't include the same thing twice,
// so we won't have duplicate vertices
HashSet<PVector> vertices = new HashSet<PVector>();

void setup() {
  size(500, 500, P3D);
  
  bunny = loadShape("bunny.obj");
  
  int numChildren = bunny.getChildCount();
  for (int i = 0; i < numChildren; i++) {
    PShape child = bunny.getChild(i);
    int numVertices = child.getVertexCount();
    for (int j = 0; j < numVertices; j++) {
      vertices.add(child.getVertex(j));
    }
  }
}

void draw() {
  background(0);
  lights();
  
  translate(width / 2, height / 2);
  
  float sc = mouseY * 5;
  for (PVector p : vertices) {
    pushMatrix();
    translate(p.x * sc, -p.y * sc, p.z * sc);
    box(10);
    popMatrix();
  }
    
}
