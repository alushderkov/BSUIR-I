const net = require('net');
const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Введите IP-адрес сервера: ', (ip) => {
    rl.question('Введите порт сервера: ', (port) => {
        const client = new net.Socket();

        client.connect(port, ip, () => {
            console.log('Подключено к серверу');
        });

        client.on('data', (data) => {
            console.log(`${data}`);
        });

        rl.on('line', (input) => {
            if (input.trim().toLowerCase() === 'exit') {
                client.end();
                rl.close();
            } else {
                client.write(input);
            }
        });

        client.on('error', (err) => {
            console.error(`Ошибка: ${err.message}`);
        });

        client.on('close', () => {
            console.log('Соединение закрыто');
            rl.close();
        });
    });
});