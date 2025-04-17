using System.IO;
using System.Numerics;

namespace Lab3;

public static class FileService
{
    public static async Task<BigInteger[]> ReadEncryptedFileAsync(string filePath)
    {
        await using FileStream fs = File.OpenRead(filePath);
        using BinaryReader reader = new BinaryReader(fs);
        
        int length = reader.ReadInt32();
        var encrypted = new BigInteger[length];
        for (int i = 0; i < length; i++)
        {
            int bytes = reader.ReadInt32();
            encrypted[i] = new BigInteger(reader.ReadBytes(bytes));
        }

        return encrypted;
    }
    
    public static async Task SaveFile(string filePath, BigInteger[] cryptoMessages)
    {
        await using FileStream fs = File.Open(filePath, FileMode.OpenOrCreate);
        await using BinaryWriter writer = new BinaryWriter(fs);
        
        writer.Write(cryptoMessages.Length);
        foreach (var cryptoMessage in cryptoMessages)
        {
            byte[] buffer = cryptoMessage.ToByteArray(); 
            writer.Write(buffer.Length);
            writer.Write(buffer);
        }
    }

    public static async Task<byte[]> ReadSimpleFileAsync(string filePath)
    {
        return await File.ReadAllBytesAsync(filePath);
    }
    
    public static async Task SaveFile(string filePath, byte[] data)
    {
        await File.WriteAllBytesAsync(filePath, data);
    }
}