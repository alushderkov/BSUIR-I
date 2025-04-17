using System.Numerics;

namespace Lab3;

public static class CryptoService
{
    public static BigInteger[] Encrypt(OpenedKey openedKey, BigInteger[] messages)
    {
        BigInteger[] encrypted = new BigInteger[messages.Length];
    
        // оптимизация
        if (messages.Length > 1000)
        {
            Parallel.For(0, messages.Length, i =>
            {
                encrypted[i] = messages[i] * (openedKey.B + messages[i]) % openedKey.N;
            });
        }
        else
        {
            for (int i = 0; i < messages.Length; i++)
            {
                encrypted[i] = messages[i] * (openedKey.B + messages[i]) % openedKey.N;
            }
        }

        return encrypted;
    }

    public static BigInteger[] Decrypt(OpenedKey openedKey, ClosedKey closedKey, BigInteger[] encryptedMessages)
    {
        BigInteger[] decrypted = new BigInteger[encryptedMessages.Length];


        for (int i = 0; i < encryptedMessages.Length; i++)
        {
            BigInteger d = (openedKey.B * openedKey.B + 4 * encryptedMessages[i]) % openedKey.N;
            BigInteger mp = CryptoService.ModPow(d,((closedKey.P + 1) / 4), closedKey.P);
            BigInteger mq = CryptoService.ModPow(d,((closedKey.Q + 1) / 4), closedKey.Q);
            
            (BigInteger yp, BigInteger yq) = CryptoService.EuclidExt(closedKey.P, closedKey.Q);
            BigInteger[] dArray = new BigInteger[4];
            // d1
            dArray[0] = (yp * closedKey.P * mq + yq * closedKey.Q * mp) % openedKey.N;
            // d2
            dArray[1] = openedKey.N - dArray[0];
            // d3
            dArray[2] = (yp * closedKey.P * mq - yq * closedKey.Q * mp) % openedKey.N;
            // d4
            dArray[3] = openedKey.N - dArray[2];
            
            BigInteger message = BigInteger.Zero;

            foreach (var dValue in dArray)
            {
                if ((dValue - openedKey.B) % 2 == BigInteger.Zero)
                {
                    message = (-openedKey.B + dValue) / 2 % openedKey.N;
                }
                else
                {
                    message = (-openedKey.B + openedKey.N + dValue) / 2 % openedKey.N;
                }

                if (message >= 0 && message <= 255)
                    break;
            }

            decrypted[i] = message;
        }
         
        return decrypted;
    }

    private static BigInteger ModPow(BigInteger a, BigInteger z, BigInteger n)
    {
        BigInteger result = BigInteger.One;
        
        while (z != 0)
        {
            while (z % 2 == BigInteger.Zero)
            {
                z /= 2;
                a = (a * a) % n;
            }

            z -= BigInteger.One;
            result = (result * a) % n;
        }
        
        return result;
    }

    private static (BigInteger yp, BigInteger yq) EuclidExt(BigInteger a, BigInteger b)
    {
        BigInteger d0 = a, d1 = b;
        BigInteger x0 = BigInteger.One, x1 = BigInteger.Zero;
        BigInteger y0 = BigInteger.Zero, y1 = BigInteger.One;


        while (d1 > 1)
        {
            BigInteger q = d0 / d1;
            BigInteger d2 = d0 % d1;

            BigInteger x2 = x0 - q * x1; 
            BigInteger y2 = y0 - q * y1; 

            d0 = d1; d1 = d2;
            x0 = x1; x1 = x2;
            y0 = y1; y1 = y2;
        }
        
        return (x1, y1);
    }
}