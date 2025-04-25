const WebSocket = require("ws");
const readline = require("readline");

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question( "Введите порт сервера: ", (port) => {
  const server = new WebSocket.Server( { port: Number(port) } );
  const clients = new Set();

  console.log(`Сервер запущен на ws://localhost:${port}`);

  server.on( "connection", (socket, req) => {
    const clientInfo = req.socket.remotePort;

    console.log(`Клиент подключился: ${clientInfo}`);
    clients.add(socket);

    socket.on( "message", (data) => {
      const message = data.toString();
      const formattedMessage = `${clientInfo} говорит ${message}`;

      clients.forEach(client => {

        if (client !== socket && client.readyState === WebSocket.OPEN) {
          client.send(formattedMessage);
        }
      });
    });

    socket.on( "close", () => {
      console.log(`Клиент отключился ${clientInfo}`);
      clients.delete(socket);
    });

    socket.on( "error", (err) => {
      console.log(`Ошибка сервера: ${err.message}`)
    });
  });

  server.on( "error", (err) => {
    console.log(`Ошибка сервера: ${err.message}`)
  });
});