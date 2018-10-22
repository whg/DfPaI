import websockets.*;

WebsocketServer server;

HashMap<String, PVector> positions = new HashMap<String, PVector>();

void setup() {
  size(500, 500);
  server = new WebsocketServer(this, 9999, "/data");

  noStroke();
}


void draw() {
  background(0);
  
  for (HashMap.Entry entry : positions.entrySet()) {
    PVector pos = (PVector) entry.getValue();
    ellipse(pos.x, pos.y, 20, 20);
  }
}

void webSocketServerEvent(String msg) {
  println(msg);

  try {
    String[] parts = split(msg, ',');
    String id = parts[0];
    int x = int(parts[1]);
    int y = int(parts[2]);
    x %= width;
    y %= height;

    if (positions.containsKey(id)) {
      PVector pos = (PVector) positions.get(id);
      pos.x = x;
      pos.y = y;
    } else {
      positions.put(id, new PVector(x, y));
    }
  } 
  catch (Exception e) {
  }
}
