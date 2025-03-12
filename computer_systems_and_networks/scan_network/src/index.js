const os = require('os');
const arp = require('node-arp');
const ping = require('ping');

async function main() {

  const { default: pLimit } = await import('p-limit');
  const limit = pLimit(100);

  const interfaces = os.networkInterfaces();

  for (const [name, details] of Object.entries(interfaces)) {
    if (!details) continue;

    for (const detail of details) {
      if (detail.family !== 'IPv4' || detail.internal) continue;

      console.log(`\nAdapter: ${name}`);
      console.log(`IP: ${detail.address}`);
      console.log(`Mask: ${detail.netmask}`);

      await scanNetwork(detail.address, detail.netmask, limit);

      console.log("----");
    }
  }
}

async function scanNetwork(ip, mask, limit) {
  const network = getNetworkAddress(ip, mask);
  const broadcast = getBroadcastAddress(network, mask);

  console.log(`Scanning ${network} - ${broadcast}`);

  const networkUInt = ipToUInt(network);
  const broadcastUInt = ipToUInt(broadcast);

  const promises = [];

  for (let i = 1; i < broadcastUInt - networkUInt; i++) {
    const targetIp = intToIp(networkUInt + i);
    promises.push(limit(() => scanIp(targetIp)));
  }

  await Promise.all(promises);
}

async function scanIp(ip) {
  const res = await ping.promise.probe(ip);
  if (res.alive) {
    arp.getMAC(ip, (err, mac) => {
      if (!err && mac) {
        console.log(`${ip}\t${mac}`);
      }
    });
  }
}

function getNetworkAddress(ip, mask) {
  const ipBytes = ip.split('.').map(Number);
  const maskBytes = mask.split('.').map(Number);
  const netBytes = ipBytes.map((byte, i) => byte & maskBytes[i]);

  return netBytes.join('.');
}

function getBroadcastAddress(network, mask) {
  const netBytes = network.split('.').map(Number);
  const maskBytes = mask.split('.').map(Number);
  const broadcast = netBytes.map((byte, i) => byte | ~maskBytes[i] & 0xff);

  return broadcast.join('.');
}

function ipToUInt(ip) {
  return ip.split('.').reduce((acc, byte) => (acc << 8) + parseInt(byte, 10), 0);
}

function intToIp(int) {
  return [(int >>> 24) & 0xff, (int >>> 16) & 0xff, (int >>> 8) & 0xff, int & 0xff].join('.');
}

main().catch(console.error);