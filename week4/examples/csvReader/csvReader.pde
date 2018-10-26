
class Thing {
  String type;
  int x, y;
  float startTime;
  
  Thing(String type, int x, float start) {
    this.type = type;
    this.x = x;
    startTime = start;
    y = 0;
  }
  
  void update() {
    float now = millis() / 1000.0;
    if (now > startTime) {
      y++;
    }
  }
  
  void draw() {
    
    if (type.equals("circle")) {
       ellipse(x, y, 10, 10);
    } else if (type.equals("rect")) {
      rect(x, y, 10, 10);
    }
  }
  
}

// download from: http://fezz.in/whg/things/table.csv
Table table;
ArrayList<Thing> things = new ArrayList<Thing>();

void setup() {
  size(500, 500);
  rectMode(CENTER);

  // tell the function that the csv has a header
  table = loadTable("table.csv", "header");
  
  for (int i = 0 ; i < table.getRowCount(); i++) {
    //println(table.getString(i, 0)); // same as below
    String type = table.getString(i, "Shape");
    int x = table.getInt(i, "x");
    float time = table.getFloat(i, "time");
    
    things.add(new Thing(type, x, time));
  }
  
}

void draw() {
  background(0);
  
  for (Thing thing : things) {
    thing.update();
    thing.draw();
  }
}
