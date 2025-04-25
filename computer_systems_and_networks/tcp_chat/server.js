const net = require('net');
const readline = require('readline');

// Интерфейс для ввода данных
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Введите IP-адрес: ', (ip) => {
    rl.question('Введите порт: ', (port) => {
        const server = net.createServer();
        const clients = [];

        server.listen(Number(port), ip, () => {
            console.log(`Сервер запущен на ${ip}:${port}`);
        });

        server.on('connection', (socket) => {
            const clientInfo = `${socket.remoteAddress}:${socket.remotePort}`;
            console.log(`Клиент подключился: ${clientInfo}`);
            clients.push(socket);

            socket.on('data', (data) => {
                const message = data.toString();
                const formattedMessage = `${clientInfo} говорит: ${message}`;

                clients.forEach(client => {
                    if (client !== socket) {
                        client.write(formattedMessage);
                    }
                });
            });

            // Обработка отключения клиента
            socket.on('end', () => {
                console.log(`Клиент отключился: ${clientInfo}`);
                const index = clients.indexOf(socket);
                if (index !== -1) {
                    clients.splice(index, 1);
                }
            });
        });

        server.on('error', (err) => {
            console.error(`Ошибка: ${err.message}`);
            server.close();
        });
    });
});