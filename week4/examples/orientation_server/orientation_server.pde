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
    int gamma = int(parts[1]);
    int beta = int(parts[2]);
    
    float x = map(gamma, -180, 180, 0, width);
    float y = map(beta, -180, 180, 0, height);

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
