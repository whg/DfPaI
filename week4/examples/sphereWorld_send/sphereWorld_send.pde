import oscP5.*;
import netP5.*;

OscP5 oscP5;

void setup() {
 
  oscP5 = new OscP5(this, 9999);
  
  NetAddress location = new NetAddress("192.168.0.8", 2345);
  
  OscMessage message = new OscMessage("/");
  message.add("Will");
  oscP5.send(message, location);
}
