import websockets.*;

WebsocketServer wss;
float clientX, clientY, serverX, serverY;

void setup() {
  size(600, 600);
  wss = new WebsocketServer(this, 8025, "/pdrawing");
}

void draw() {
  background(0);

  serverX = mouseX;
  serverY = mouseY;
  wss.sendMessage("" + serverX + "," + serverY);

  fill(0, 255, 0);
  circle(clientX, clientY, 10);
  fill(0, 0, 255);
  circle(serverX, serverY, 10);
}

void webSocketServerEvent(String msg) {
  println("Received: " + msg);
  String[] fields = msg.split(",");
  
  clientX = float(fields[0]);
  clientY = float(fields[1]);
}
