declare module 'node-arp' {
  export function getMAC(ip: string, callback: (err: Error | null, mac: string | null) => void): void;
}

declare module 'ping' {
  export const promise: {
    probe(host: string): Promise<{ alive: boolean }>;
  };
}