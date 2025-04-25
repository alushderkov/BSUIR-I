const WebSocket = require("ws");
const readline = require("readline");

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question("Введите адрес сервера (например, ws://localhost:8080): ",
  (url) => {
    const client = new WebSocket(url);

    client.on( "open", () => {
      console.log("Подключено к серверу");
    });

    client.on( "message", (data) => {
      console.log( data.toString() );
    });

    client.on( "error", (err) => {
      console.error(`Ошибка: ${err.message}`);
    });

    client.on( "close", () => {
      console.log("Соединение закрыто");
      rl.close();
    });

    rl.on( "line", (input) => {

      if ( input.trim().toLowerCase() === "exit" ) {
        client.close();
        rl.close();
      } else {
        client.send(input);
      }
    });

  });