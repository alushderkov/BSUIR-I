const WebSocket = require("ws");
const readline = require("readline");
const os = require("os");

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question("Введите порт сервера: ", (port) => {
  const server = new WebSocket.Server({ host: '0.0.0.0', port: Number(port) });
  const clients = new Set();

  // Получаем IP-адреса сервера в локальной сети
  const networkInterfaces = os.networkInterfaces();
  const addresses = [];

  Object.keys(networkInterfaces).forEach(iface => {
    networkInterfaces[iface].forEach(details => {
      if (details.family === 'IPv4' && !details.internal) {
        addresses.push(details.address);
      }
    });
  });

  console.log(`Сервер запущен. Подключитесь по одному из адресов:`);
  addresses.forEach(ip => {
    console.log(`ws://${ip}:${port}`);
  });

  server.on("connection", (socket, req) => {
    const clientInfo = req.socket.remoteAddress + ":" + req.socket.remotePort;
    console.log(`Клиент подключился: ${clientInfo}`);
    clients.add(socket);

    socket.on("message", (data) => {
      const message = data.toString();
      const formattedMessage = `${clientInfo} говорит: ${message}`;

      clients.forEach(client => {
        if (client !== socket && client.readyState === WebSocket.OPEN) {
          client.send(formattedMessage);
        }
      });
    });

    socket.on("close", () => {
      console.log(`Клиент отключился: ${clientInfo}`);
      clients.delete(socket);
    });

    socket.on("error", (err) => {
      console.log(`Ошибка сервера: ${err.message}`);
    });
  });

  server.on("error", (err) => {
    console.log(`Ошибка сервера: ${err.message}`);
  });
});