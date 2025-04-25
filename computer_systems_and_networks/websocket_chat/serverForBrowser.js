const WebSocket = require('ws');
const os = require('os');

const port = 8080; // Можно сделать ввод порта как в предыдущем примере
const server = new WebSocket.Server({ host: '0.0.0.0', port });

const getLocalIPs = () => {
  const interfaces = os.networkInterfaces();
  const ips = [];

  for (const iface in interfaces) {
    for (const details of interfaces[iface]) {
      if (details.family === 'IPv4' && !details.internal) {
        ips.push(details.address);
      }
    }
  }
  return ips;
};

const localIPs = getLocalIPs();
console.log('Server started. Connect using one of these addresses:');
localIPs.forEach(ip => {
  console.log(`ws://${ip}:${port}`);
});

server.on('connection', (socket, req) => {
  const clientIp = req.socket.remoteAddress;
  console.log(`New connection from: ${clientIp}`);

  socket.on('message', (message) => {
    console.log(`Message from ${clientIp}: ${message}`);
    server.clients.forEach((client) => {
      if (client !== socket && client.readyState === WebSocket.OPEN) {
        client.send(`${clientIp}: ${message}`);
      }
    });
  });

  socket.on('close', () => {
    console.log(`Client disconnected: ${clientIp}`);
  });

  socket.on('error', (err) => {
    console.error(`Error with client ${clientIp}:`, err);
  });
});