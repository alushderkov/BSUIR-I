using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using HierarchyAlgorithm;

namespace DMMaA_LAB_6
{
    /// <summary>
    ///     Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow
    {
        private List<List<int>> Distances { get; set; }
        private Hierarchy _hierarchy;


        public MainWindow()
        {
            InitializeComponent();
        }

        private int GetElementsCount()
        {
            try
            {
                return int.Parse(TextBoxElementsCount.Text);
            }
            catch (FormatException)
            {
                return 0;
            }
        }

        private void SetGridView()
        {
            Distances = new List<List<int>>();
            for (var i = 0; i < GetElementsCount(); i++)
            {
                Distances.Add(new List<int>());
                for (var j = 0; j < GetElementsCount(); j++)
                {
                    Distances[i].Add(0);
                }
            }

            DistancesDataGridView.ItemsSource2D = Distances;
        }

        private void RandomDistanceButton_Click(object sender, RoutedEventArgs e)
        {
            SetRandom();
        }

        private void SetRandom()
        {
            if (Distances == null) return;
            Distances = new List<List<int>>(Distances);
            var random = new Random();
            for (var i = 0; i < GetElementsCount(); i++)
            {
                for (var j = 0; j < GetElementsCount(); j++)
                {
                    if (i == j)
                    {
                        Distances[j][i] = 0;
                    }
                    else
                    {
                        Distances[j][i] =
                            random.Next(1, (GetElementsCount()) * 4);
                        Distances[i][j] = Distances[j][i];
                    }
                }
            }

            DistancesDataGridView.ItemsSource2D = Distances;
        }

        private void Draw(int numOfButton)
        {
            var tableElements = new List<TableElement>();
            for (var i = 0; i < GetElementsCount(); i++)
            {
                tableElements.Add(new TableElement(i));
            }

            if (!IsDistancesArrayValid(Distances))
            {
                MessageBox.Show(
                    "Таблица расстояний не симметрична и/или на главной диагонали не стоят 0");
                return;
            }

            switch (numOfButton)
            {
                case 0:
                    _hierarchy = new MinHierarchy(GetElementsCount(), 355, 400);
                    break;
                case 1:
                    _hierarchy = new InvertMaxHierarchy(GetElementsCount(), 355, 400);
                    break;
            }

            ResultImage.Source =
                new DrawingImage(_hierarchy.GetDrawingGroup(Distances, tableElements));
        }

        private bool IsDistancesArrayValid(List<List<int>> distances)
        {
            var result = true;
            for (var i = 0; i < GetElementsCount(); i++)
            {
                for (var j = 0; j < GetElementsCount(); j++)
                {
                    if (distances[i][j] != distances[j][i]) result = false;
                    if (i == j && distances[i][j] != 0) result = false;
                }
            }

            return result;
        }


        private void DistancesDataGridView_OnBeginningEdit(object sender, DataGridBeginningEditEventArgs e)
        {
            if (e.Column.Header.ToString() == e.Row.Header.ToString())
            {
                e.Cancel = true;
            }
        }

        private void DistancesDataGridView_OnCellEditEnding(object sender, DataGridCellEditEndingEventArgs e)
        {
            if (e.Cancel) return;
            Distances[int.Parse(e.Column.Header.ToString())][int.Parse(e.Row.Header.ToString())] =
                int.Parse(((TextBox) e.EditingElement).Text);
            Distances[int.Parse(e.Row.Header.ToString())][int.Parse(e.Column.Header.ToString())] =
                int.Parse(((TextBox) e.EditingElement).Text);

            var distances = new List<List<int>>();
            for (var i = 0; i < GetElementsCount(); i++)
            {
                distances.Add(new List<int>());
                for (var j = 0; j < GetElementsCount(); j++)
                {
                    distances[i].Add(Distances[i][j]);
                }
            }

            Distances = distances;
            DistancesDataGridView.ItemsSource2D = Distances;
        }

        private void TextCheck(object sender, TextCompositionEventArgs e)
        {
            var regex = new Regex("(^[0-9]+$)");
            if (e.Text == " ") e.Handled = true;
            var fullStr = $"{(sender as TextBox)?.Text}{e.Text}";
            if (regex.IsMatch(fullStr))
            {
                if (!(int.TryParse(fullStr, NumberStyles.Number, null, out var value) && value < 100)) e.Handled = true;
            }
            else
            {
                e.Handled = true;
            }
        }

        private void TextBoxElementsCount_OnTextChanged(object sender, TextChangedEventArgs e)
        {
            SetGridView();
        }


        private void ButtonMinimum_OnClick(object sender, RoutedEventArgs e)
        {
            if (Distances != null && Distances.Count > 1)
                Draw(0);
        }

        private void ButtonMaximum_OnClick(object sender, RoutedEventArgs e)
        {
            if (Distances != null && Distances.Count > 1)
                Draw(1);
        }
    }
}