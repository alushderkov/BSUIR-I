const WebSocket = require('ws');

const server = new WebSocket.Server({ port: 8080 });

server.on('connection', (socket, req) => {
  const clientIp = req.socket.remotePort;
  console.log(`New connection: ${clientIp}`);

  socket.on('message', (message) => {
    server.clients.forEach((client) => {
      if (client !== socket && client.readyState === WebSocket.OPEN) {
        client.send(`${clientIp}: ${message}`);
      }
    });
  });
});

console.log('Server was started on ws://localhost:8080');