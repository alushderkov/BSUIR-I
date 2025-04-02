using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Windows;
using System.Windows.Media;

namespace HierarchyAlgorithm
{
    public abstract class Hierarchy
    {
        protected const int DownSpace = 20;
        private int _currentX;
        private List<Line> _lines;
        private readonly int _elementsCount;
        private readonly int _width;
        private int XStep { get; }
        private static readonly Color MainColor = Colors.Black;
        private static readonly SolidColorBrush MainBrush = new SolidColorBrush(MainColor);
        private static readonly Pen MainPen = new Pen(MainBrush, 1);
        protected int Height { get; }
        protected int YStep { get; private set; }
        protected abstract int MinMaxStartValue { get; }
        protected abstract int GetYStep(IEnumerable<Line> list);
        protected abstract string GetYString(int distance);
        protected abstract int GetMinMax(int first, int second);
        protected abstract double GetCurrentY(double distance);

        protected Hierarchy(int elementsCount, int width, int height)
        {
            this._elementsCount = elementsCount;
            this._width = width;
            Height = height;
            XStep = width / (elementsCount + 1);
            _currentX = XStep / 2;
        }

        public DrawingGroup GetDrawingGroup(List<List<int>> distances,
            List<TableElement> tableElements)
        {
            _lines = new List<Line>();
            var result = DrawHierarchy(distances, tableElements);
            return result;
        }

        private DrawingGroup DrawHierarchy(List<List<int>> distances,
            List<TableElement> tableElements)
        {
            CalculateLines(distances, tableElements);
            YStep = GetYStep(_lines);
            var result = GetDrawingHierarchy();
            result.Children.Add(DrawAxes());
            return result;
        }

        private void CalculateLines(List<List<int>> distances, List<TableElement> tableElements)
        {
            for (var i = 0; i < _elementsCount - 1; i++)
            {
                var minDifferent = GetMinDifferent(distances, tableElements);
                var iElement = tableElements.First(x => x.Number == minDifferent.I);
                var jElement = tableElements.First(x => x.Number == minDifferent.J);
                var iPosition = GetStartPoint(iElement);
                var jPosition = GetStartPoint(jElement);

                _lines.AddRange(DrawHierarchyElement(iPosition, minDifferent.Distance, jPosition,
                    iElement, jElement, distances[minDifferent.I][minDifferent.J]));

                tableElements.Remove(jElement);
                tableElements.Remove(iElement);
                iElement.Name = "";
                iElement.Position = new Point((jPosition.X + iPosition.X) / 2, minDifferent.Distance);
                tableElements.Add(iElement);
                distances = ClearDistances(distances, minDifferent);
            }
        }

        private DrawingGroup GetDrawingHierarchy()
        {
            var result = new DrawingGroup();
            var geometryGroup = new GeometryGroup();
            var textGroup = new GeometryGroup();
            var horizontalGroup = new GeometryGroup();
            foreach (var line in _lines)
            {
                line.From = new Point(line.From.X, GetCurrentY(line.From.Y) - DownSpace);
                line.To = new Point(line.To.X, GetCurrentY(line.To.Y) - DownSpace);
                if (Math.Abs(line.From.Y - line.To.Y) < 1)
                {
                    horizontalGroup.Children.Add(new LineGeometry(line.From, line.To));
                }
                else
                {
                    geometryGroup.Children.Add(new LineGeometry(line.From, line.To));
                }

                textGroup.Children.Add(GetTextGeometry(line.From + new Vector(-2, 5), line.XName));
                textGroup.Children.Add(GetTextGeometry(new Point(0, line.From.Y), line.YName));
            }

            result.Children.Add(new GeometryDrawing(new SolidColorBrush(Colors.Red),
                new Pen(new SolidColorBrush(Colors.Red), 2), geometryGroup));
            result.Children.Add(new GeometryDrawing(new SolidColorBrush(Colors.BlueViolet),
                new Pen(new SolidColorBrush(Colors.BlueViolet), 2), horizontalGroup));
            result.Children.Add(new GeometryDrawing(MainBrush, MainPen, textGroup));
            return result;
        }

        private static Geometry GetTextGeometry(Point point, string textToFormat)
        {
            var fontFamily = new FontFamily("Open Sans");
            var text = new FormattedText(textToFormat,
                CultureInfo.GetCultureInfo("en-us"),
                FlowDirection.LeftToRight,
                new Typeface(fontFamily, FontStyles.Italic, FontWeights.Light, FontStretches.Normal),
                10,
                Brushes.Black);
            return text.BuildGeometry(point);
        }

        private GeometryDrawing DrawAxes()
        {
            var group = new GeometryGroup();
            group.Children.Add(new LineGeometry(new Point(0, Height - DownSpace),
                new Point(_width, Height - DownSpace)));
            group.Children.Add(new LineGeometry(new Point(XStep / 2, 0), new Point(XStep / 2, Height)));
            return new GeometryDrawing(MainBrush, MainPen, group);
        }

        private List<List<int>> ClearDistances(IEnumerable<List<int>> elementDistances,
            MinDifferent minDifferent)
        {
            var distances = CopyDistances(elementDistances);
            for (var i = 0; i < distances.Count; i++)
            {
                if (i == minDifferent.I || i == minDifferent.J) continue;
                var newDistance = GetMinMax(distances[i][minDifferent.I],
                    distances[i][minDifferent.J]);
                distances = SetDistance(distances, i, minDifferent.I, newDistance);
                distances = SetDistance(distances, i, minDifferent.J, 0);
            }

            return SetDistance(distances, minDifferent.I, minDifferent.J, 0);
        }

        private static List<List<int>> CopyDistances(IEnumerable<List<int>> elementDistances)
        {
            var distances = new List<List<int>>();
            foreach (var elementDistance in elementDistances)
            {
                var newList = new int[elementDistance.Count];
                elementDistance.CopyTo(newList);
                distances.Add(newList.ToList());
            }

            return distances;
        }

        private static List<List<int>> SetDistance(List<List<int>> distances, int i, int j,
            int newDistance)
        {
            distances[i][j] = newDistance;
            distances[j][i] = newDistance;
            return distances;
        }

        private IEnumerable<Line> DrawHierarchyElement(Point iPosition, int currentY,
            Point jPosition, TableElement iElement, TableElement jElement, int yValue)
        {
            return new List<Line>
            {
                new Line(iPosition, new Point(iPosition.X, currentY), iElement.Name, ""),
                new Line(jPosition, new Point(jPosition.X, currentY), jElement.Name, ""),
                new Line(new Point(iPosition.X, currentY), new Point(jPosition.X, currentY), "",
                    GetYString(yValue))
            };
        }

        private Point GetStartPoint(TableElement element)
        {
            if (Math.Abs(element.Position.X) > 0.01
                && Math.Abs(element.Position.Y) > 0.01)
            {
                return element.Position;
            }

            _currentX += XStep;
            return new Point(_currentX - XStep, 0);
        }

        private MinDifferent GetMinDifferent(List<List<int>> distances, List<TableElement> elements)
        {
            var minDifferent = new MinDifferent {Distance = MinMaxStartValue};
            for (var i = 0; i < distances.Count; i++)
            {
                for (var j = i; j < distances.Count; j++)
                {
                    if (distances[i][j] != 0 &&
                        CompareMinMax(distances[i][j], minDifferent.Distance))
                    {
                        minDifferent = SetMinDifferent(distances, elements, i, j, minDifferent);
                    }
                }
            }

            return minDifferent;
        }

        private static MinDifferent SetMinDifferent(IReadOnlyList<List<int>> distances,
            List<TableElement> elements, int i, int j,
            MinDifferent minDifferent)
        {
            if (distances[i][j] == minDifferent.Distance)
            {
                var iElement = elements.First(x => x.Number == i);
                var jElement = elements.First(x => x.Number == j);
                if (iElement.Name == "" && jElement.Name == "") return minDifferent;
                minDifferent.I = i;
                minDifferent.J = j;
                minDifferent.Distance = distances[i][j];
            }
            else
            {
                minDifferent.I = i;
                minDifferent.J = j;
                minDifferent.Distance = distances[i][j];
            }

            return minDifferent;
        }

        protected abstract bool CompareMinMax(int first, int second);

        private class MinDifferent
        {
            public MinDifferent()
            {
                I = 0;
                J = 0;
                Distance = int.MaxValue;
            }

            public int I { get; set; }
            public int J { get; set; }
            public int Distance { get; set; }
        }
    }
}