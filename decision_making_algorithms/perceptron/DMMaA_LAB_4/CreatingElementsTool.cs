using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;

namespace DMMaA_LAB_4
{
    internal static class CreatingElementsTool
    {
        public static void MakeInputBoxes(int number, StackPanel inputPanel, List<TextBox> textBoxes,
           System.Windows.Input.TextCompositionEventHandler textCheck)
        {
            inputPanel.Children.Clear();
            textBoxes.Clear();
            for (var i = 0; i < number; i++)
            {
                var textBox = new TextBox
                {
                    Name = $"Input{i}",
                    FontSize = 25,
                    FontFamily = new FontFamily("Open Sans"),
                    TextAlignment = TextAlignment.Center,
                };
                textBox.PreviewTextInput += textCheck;
                inputPanel.Children.Add(textBox);
                textBoxes.Add(textBox);
            }
        }


        public static void ClearListView(ListView listView)
        {
            listView.Items.Clear();
        }

        public static void CreateTextBlockOnListView(string value, ListView listView)
        {
            var textBox = new TextBlock()
            {
                FontFamily = new FontFamily("Open Sans"),
                FontSize = 18,
                Text = value
            };
            listView.Items.Add(textBox);
        }
    }
}