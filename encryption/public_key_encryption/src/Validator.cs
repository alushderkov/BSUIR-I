using System.Numerics;
using System.Text;

namespace Lab3;

public static class Validator
{

    public static bool IsCorrectParam(BigInteger number, int min, string paramName, out string error)
    {
        error = string.Empty;
        if (number < min + 1)
        {
            error += $"{paramName} должен быть больше {min}!\r\n";
        }

        if (!IsAlmostDivBy4(number))
        {
            error += $"{paramName} должен при делении на 4 иметь остаток 3\r\n";
        }
        
        if (!IsPrimeMillerRabin(number))
        {
            error += $"{paramName} должно быть простым\r\n";
        }

        return error.Equals(string.Empty);
    }
    
    public static bool IsCorrectParamB(BigInteger number, int min, int max, string paramName, out string error)
    {
        error = string.Empty;
        if (number < min + 1)
        {
            error += $"{paramName} должен быть больше {min}!\r\n";
        }
        
        /*if (number > max)
        {
            error += $"{paramName} должен быть меньше {max}!\r\n";
        }*/

        return error.Equals(string.Empty);
    }
    
    private static bool IsAlmostDivBy4(BigInteger number)
    {
        return number % 4 == 3;
    }

    private static bool IsPrimeMillerRabin(BigInteger number, int iterations = 40)
    {
        if (number <= 1) return false;
        if (number == 2 || number == 3) return true;
        if (number % 2 == 0) return false;

        // Записываем n-1 в виде d*2^s
        BigInteger d = number - 1;
        int s = 0;
    
        while (d % 2 == 0)
        {
            d /= 2;
            s++;
        }

        Random rand = new Random();
    
        for (int i = 0; i < iterations; i++)
        {
            // BigInteger a = RandomBigInteger(2, n - 2, rand);
            BigInteger x = BigInteger.ModPow(2, d, number);
        
            if (x == 1 || x == number - 1)
                continue;
        
            for (int j = 0; j < s - 1; j++)
            {
                x = BigInteger.ModPow(x, 2, number);
                if (x == 1) return false;
                if (x == number - 1) break;
            }
        
            if (x != number - 1) return false;
        }
    
        return true;
    }
}