using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace DMMaA_LAB_4
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private Perceptron _perceptron;
        private List<TextBox> _textBlocksDictionary = new();

        public MainWindow()
        {
            InitializeComponent();
        }

        private void ButtonClassify_Click(object sender, RoutedEventArgs e)
        {
            var testObject = new Perceptron.PerceptronObject();
            var numbers = new int[_textBlocksDictionary.Count];
            var regex = new Regex("(^-?[0-9]+$)");
            try
            {
                for (var i = 0; i < _textBlocksDictionary.Count; i++)
                {
                    if (regex.IsMatch(_textBlocksDictionary[i].Text.Trim()))
                        numbers[i] = int.Parse(_textBlocksDictionary[i].Text.Trim());
                    else
                        throw new ArgumentException($"Значение в поле №{i} некорректно");
                    testObject.Attributes.Add(numbers[i]);
                }

                MessageBox.Show($"Объект относится к {_perceptron.FindClass(testObject)} классу");
            }
            catch (ArgumentException exception)
            {
                MessageBox.Show(exception.Message);
            }
            catch
            {
                MessageBox.Show("Ошибка ввода тестовой сборки");
            }
        }

        private void ButtonCreateSelection_Click(object sender, RoutedEventArgs e)
        {
            CreatingElementsTool.MakeInputBoxes((int) SliderAttributeNumber.Value, inputPanel,_textBlocksDictionary, TextCheck);
            CreatingElementsTool.ClearListView(ListViewSoultions);
            CreatingElementsTool.ClearListView(ListViewSelection);
            _perceptron = new Perceptron((int) SliderClassesNumber.Value, (int) SliderObjectNumber.Value,
                (int) SliderAttributeNumber.Value);
            _perceptron.Calculate();
            _perceptron.FillListViews(ListViewSelection, ListViewSoultions);
        }


        private void TextCheck(object sender, TextCompositionEventArgs e)
        {
            var regex = new Regex("(^-?[0-9]+$)|(^-?$)");
            if (e.Text == " ") e.Handled = true;
            if (!regex.IsMatch($"{(sender as TextBox)?.Text}{e.Text}")) e.Handled = true;

        }
    }
}