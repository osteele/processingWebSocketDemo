import websockets.*;

WebsocketClient wsc;
float clientX, clientY, serverX, serverY;

// To allow communication between different computers,
// hange the following to the local address
final String HOST_NAME = "localhost";

void setup() {
  size(600, 600);
  wsc = new WebsocketClient(this, "ws://" + HOST_NAME + ":8025/pdrawing");
}

void draw() {
  background(0);
  
  clientX = mouseX;
  clientY = mouseY;
  wsc.sendMessage("" + clientX + "," + clientY);
  
  fill(0, 255, 0);
  circle(clientX, clientY, 10);
  fill(0, 0, 255);
  circle(serverX, serverY, 10);
}

void webSocketEvent(String msg) {
  println("Received: " + msg);
  String[] fields = msg.split(",");
  
  serverX = float(fields[0]);
  serverY = float(fields[1]);
}
