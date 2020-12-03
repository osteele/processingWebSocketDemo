# Interprocess Communication using WebSockets

1. Install the Processing Websockets library: In Processing, select Tools > Add
   Tool; click Libraries; search for Websockets, and install it.
2. Run dotServer.
3. Run dotClient.

In each sketch, two dots are drawn. The green dot is the latest position of the
mouse over the client. The blue dot is the latest position of the mouse over the
server.

The server must be started before the client. If you restart the server, quit
and restart the client so that it can connect to the new server.

This uses the Websockets 0.1b library by Lasse Steenbock Vestergaard.
