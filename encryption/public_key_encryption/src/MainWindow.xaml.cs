using System.Numerics;
using System.Windows;
using System.Windows.Input;


namespace Lab3;

/// <summary>
/// Interaction logic for MainWindow.xaml
/// </summary>
public partial class MainWindow : Window
{
    private const int MinP = 0;
    private const int MinQ = 0;
    private const int MinB = 0;
    private const int MaxB = 10533;
    private BigInteger[] _fileContent = [];
    private BigInteger[] _result = [];
    
    public MainWindow()
    {
        InitializeComponent();
    }
    
    private void btn_execute_Click(object sender, EventArgs e)
    {
        
        BigInteger p = BigInteger.Parse(TbInputP.Text);
        BigInteger q = int.Parse(TbInputQ.Text);
        BigInteger b = int.Parse(TbInputB.Text);
        
        if (!Validator.IsCorrectParam(p, MinP, "p", out var error))
        {
            MessageBox.Show(error, "ой-йой", MessageBoxButton.OK, MessageBoxImage.Error);
            return;
        }

        if (!Validator.IsCorrectParam(q, MinQ, "q", out error))
        {
            MessageBox.Show(error, "ой-йой", MessageBoxButton.OK, MessageBoxImage.Error);
            return;
        }
        
        if (!Validator.IsCorrectParamB(b, MinB, MaxB, "b", out error))
        {
            MessageBox.Show(error, "ой-йой", MessageBoxButton.OK, MessageBoxImage.Error);
            return;
        }
        
        BigInteger n = p * q;
        // шифруем
        if (RbCrypto.IsChecked ?? false)
        {
            _result = CryptoService.Encrypt(new OpenedKey(n,b), _fileContent);
        }
        // дешифрируем
        else
        {
            _result = CryptoService.Decrypt(new OpenedKey(n,b), new ClosedKey(p,q), _fileContent);
        }
        
        // выводим результат
        TbResult.Text = string.Join(' ', _result);
    }
    

    private void tb_input_PreviewTextInput(object sender, TextCompositionEventArgs e)
    {
        if (!char.IsDigit(e.Text, 0))
        {
            e.Handled = true;
        }
    }
    
    private void tb_input_PreviewKeyDown(object sender, KeyEventArgs e)
    {
        if (e.Key == Key.Back || e.Key == Key.Delete || e.Key == Key.Tab ||
            (e.Key >= Key.D0 && e.Key <= Key.D9) || 
            (e.Key >= Key.NumPad0 && e.Key <= Key.NumPad9))
        {
            e.Handled = false;
        }
        else
        {
            e.Handled = true;
        }
    }

    private void tb_input_TextChanged(object sender, EventArgs e)
    {
        BtnExecute.IsEnabled = !string.IsNullOrEmpty(TbInputP.Text)
                              && !string.IsNullOrEmpty(TbInputQ.Text)
                              && !string.IsNullOrEmpty(TbInputB.Text)
                              && !string.IsNullOrEmpty(TbSource.Text);
    }

    private async void BtnOpenSimpleFile_OnClick(object sender, RoutedEventArgs e)
    {
        var openFileDialog = new Microsoft.Win32.OpenFileDialog();
        
        openFileDialog.Title = "Выберите файл для открытия";
        openFileDialog.Multiselect = false;
        openFileDialog.CheckFileExists = true;
        
        if (openFileDialog.ShowDialog() == true)
        {
            try
            {
                // Читаем содержимое файла
                byte[] buffer = await FileService.ReadSimpleFileAsync(openFileDialog.FileName);
                // переводим в BigInteger
                _fileContent = buffer
                    .Select(message => new BigInteger(message))
                    .ToArray();
                // результат выводим
                TbSource.Text = string.Join(' ', _fileContent);
            }
            catch
            {
                MessageBox.Show("Ошибка при открытии файла!", 
                    "Ошибка", 
                    MessageBoxButton.OK, 
                    MessageBoxImage.Error);
            }
        }
    }

    private async void BtnOpenEncryptedFile_OnClick(object sender, RoutedEventArgs e)
    {
        var openFileDialog = new Microsoft.Win32.OpenFileDialog();
        
        openFileDialog.Title = "Выберите файл для открытия";
        openFileDialog.Multiselect = false;
        openFileDialog.CheckFileExists = true;
        
        if (openFileDialog.ShowDialog() == true)
        {
            try
            {
                // Читаем содержимое файла
                _fileContent = await FileService.ReadEncryptedFileAsync(openFileDialog.FileName);
                
                // результат выводим
                TbSource.Text = string.Join(' ', _fileContent);
            }
            catch
            {
                MessageBox.Show("Ошибка при открытии зашифрованного файла!", 
                    "Ошибка", 
                    MessageBoxButton.OK, 
                    MessageBoxImage.Error);
            }
        }
    }

    private async void BtnSaveFile_OnClick(object sender, RoutedEventArgs e)
    {
        var openFileDialog = new Microsoft.Win32.SaveFileDialog();
        
        openFileDialog.Title = "Выберите файл для открытия";
        
        if (openFileDialog.ShowDialog() == true)
        {
            byte[] buffer = _result
                    .Select(message => message.ToByteArray().First())
                    .ToArray();
            
            try
            {
                // записываем в файл 
                await FileService.SaveFile(openFileDialog.FileName, buffer);
            }
            catch
            {
                MessageBox.Show("Ошибка при сохранении в файла!", 
                    "Ошибка", 
                    MessageBoxButton.OK, 
                    MessageBoxImage.Error);
            } 
        }
    }

    private async void BtnSaveEncryptedFile_OnClick(object sender, RoutedEventArgs e)
    {
        var openFileDialog = new Microsoft.Win32.SaveFileDialog();
        
        openFileDialog.Title = "Выберите файл для открытия";

        if (openFileDialog.ShowDialog() == true)
        {
            try
            {
                // записываем в файл 
                await FileService.SaveFile(openFileDialog.FileName, _result);
            }
            catch
            {
                MessageBox.Show("Ошибка при сохранении в файла!",
                    "Ошибка",
                    MessageBoxButton.OK,
                    MessageBoxImage.Error);
            }
        }
    }
}