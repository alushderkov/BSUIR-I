using System;
using System.Linq;
using System.Windows;
using System.Windows.Media;


namespace DMMaA_LAB_3
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private const int PointsCount = 50000;

        private double _pc1;

        private double _pc2;

        private readonly Random _random = new Random();

        public MainWindow()
        {
            InitializeComponent();
            SliderPC1.ValueChanged += SliderPC1_OnValueChanged;
            SliderPC2.ValueChanged += SliderPC2_OnValueChanged;
        }

        private void SliderPC1_OnValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            SliderPC2.Value = 1 - SliderPC1.Value;
            ReDrawChart();
        }

        private void SliderPC2_OnValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            SliderPC1.Value = 1 - SliderPC2.Value;
        }

        private void ReDrawChart()
        {
            _pc1 = SliderPC1.Value;
            _pc2 = SliderPC2.Value;

            var drawingGroup = new DrawingGroup();
            Calc(drawingGroup);
            Canvas.Source = new DrawingImage(drawingGroup);
        }

        private void Calc(DrawingGroup drawingGroup)
        {
            var points1 = new int[PointsCount];
            var points2 = new int[PointsCount];
            double mx1 = 0;
            double mx2 = 0;

            for (var i = 0; i < PointsCount; i++)
            {
                points1[i] = _random.Next(100, 740);
                points2[i] = _random.Next(-100, 540);
                mx1 += points1[i];
                mx2 += points2[i];
            }

            mx1 /= PointsCount;
            mx2 /= PointsCount;

            double sigma1 = 0;
            double sigma2 = 0;
            for (var i = 0; i < PointsCount; i++)
            {
                sigma1 += Math.Pow(points1[i] - mx1, 2);
                sigma2 += Math.Pow(points2[i] - mx2, 2);
            }

            sigma1 = Math.Sqrt(sigma1 / PointsCount);
            sigma2 = Math.Sqrt(sigma2 / PointsCount);

            var result1 = new double[(int) BorderImage.ActualWidth];
            var result2 = new double[(int) BorderImage.ActualWidth];
            result1[0] = (Math.Exp(-0.5 * Math.Pow((-100 - mx1) / sigma1, 2)) /
                (sigma1 * Math.Sqrt(2 * Math.PI)) * _pc1);
            result2[0] =
                (Math.Exp(-0.5 * Math.Pow((-100 - mx2) / sigma2, 2)) /
                    (sigma2 * Math.Sqrt(2 * Math.PI)) * _pc2);

            var d = 0;

            var redBrush = new SolidColorBrush(Colors.Red);
            var blueBrush = new SolidColorBrush(Colors.Blue);
            var blackBrush = new SolidColorBrush(Colors.Black);
            var greenBrush = new SolidColorBrush(Colors.LawnGreen);

            var redGeometryGroup = new GeometryGroup();
            var blueGeometryGroup = new GeometryGroup();
            var blackGeometryGroup = new GeometryGroup();
            var greenGeometryGroup = new GeometryGroup();
            for (var x = 1; x < Math.Round(BorderImage.ActualWidth); x++)
            {
                result1[x] =
                    (Math.Exp(-0.5 * Math.Pow((x - 100 - mx1) / sigma1, 2)) /
                        (sigma1 * Math.Sqrt(2 * Math.PI)) * _pc1);

                result2[x] =
                    (Math.Exp(-0.5 * Math.Pow((x - 100 - mx2) / sigma2, 2)) /
                        (sigma2 * Math.Sqrt(2 * Math.PI)) * _pc2);

                if (Math.Abs(result1[x] * 500 - result2[x] * 500) < 0.002)
                {
                    d = x;
                }

                var blueLineGeometry = new LineGeometry(
                    new Point(x - 1,
                        (BorderImage.ActualHeight - (int) (result1[x - 1] * BorderImage.ActualHeight * 500))),
                    new Point(x, (BorderImage.ActualHeight - (int) (result1[x] * BorderImage.ActualHeight * 500))));
                var redLineGeometry = new LineGeometry(
                    new Point(x - 1,
                        (BorderImage.ActualHeight - (int) (result2[x - 1] * BorderImage.ActualHeight * 500))),
                    new Point(x, (BorderImage.ActualHeight - (int) (result2[x] * BorderImage.ActualHeight * 500))));

                blueGeometryGroup.Children.Add(blueLineGeometry);
                redGeometryGroup.Children.Add(redLineGeometry);
            }

            var error1 = result2.Take((int) d).Sum();
            var error2 = _pc1 > _pc2 ? result2.Skip((int) d).Sum() : result1.Skip((int) d).Sum();


            var greenLine = new LineGeometry(new Point(d, 0), new Point(d, BorderImage.ActualHeight));
            greenGeometryGroup.Children.Add(greenLine);

            var blackLineX = new LineGeometry(new Point(0, BorderImage.ActualHeight - 1),
                new Point(BorderImage.ActualWidth, BorderImage.ActualHeight - 1));
            var blackLineTopArrow = new LineGeometry(new Point(BorderImage.ActualWidth, BorderImage.ActualHeight - 1),
                new Point(BorderImage.ActualWidth - 15, BorderImage.ActualHeight - 5));
            var blackLineBottomArrow = new LineGeometry(
                new Point(BorderImage.ActualWidth, BorderImage.ActualHeight - 1),
                new Point(BorderImage.ActualWidth - 15, BorderImage.ActualHeight + 5));
            var blackLineY = new LineGeometry(new Point(100, BorderImage.ActualHeight - 1),
                new Point(100, 0));
            var blackLineLeftArrow = new LineGeometry(new Point(100, 0), new Point(95, 15));
            var blackLineRightArrow = new LineGeometry(new Point(100, 0), new Point(105, 15));

            blackGeometryGroup.Children.Add(blackLineX);
            blackGeometryGroup.Children.Add(blackLineTopArrow);
            blackGeometryGroup.Children.Add(blackLineBottomArrow);
            blackGeometryGroup.Children.Add(blackLineY);
            blackGeometryGroup.Children.Add(blackLineLeftArrow);
            blackGeometryGroup.Children.Add(blackLineRightArrow);

            TextBoxFalseAlarm.Text = error1.ToString("F20");
            TextBoxMiss.Text = error2.ToString("F20");
            TextBoxAmountOfRisk.Text = (error1 + error2).ToString("F20");

            var blueLineGeometryDrawing = new GeometryDrawing(blueBrush, new Pen(blueBrush, 2), blueGeometryGroup);
            var redLineGeometryDrawing = new GeometryDrawing(redBrush, new Pen(redBrush, 2), redGeometryGroup);
            var blackGeometryDrawing = new GeometryDrawing(blackBrush, new Pen(blackBrush, 3), blackGeometryGroup);
            var greenGeometryDrawing = new GeometryDrawing(greenBrush, new Pen(greenBrush, 2), greenGeometryGroup);

            drawingGroup.Children.Add(blackGeometryDrawing);
            drawingGroup.Children.Add(blueLineGeometryDrawing);
            drawingGroup.Children.Add(redLineGeometryDrawing);
            drawingGroup.Children.Add(greenGeometryDrawing);
        }
    }
}