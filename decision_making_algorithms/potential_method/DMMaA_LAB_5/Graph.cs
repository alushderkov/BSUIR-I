using System;
using System.Drawing;
using System.Windows.Media;
using Color = System.Windows.Media.Color;
using Pen = System.Windows.Media.Pen;

namespace DMMaA_LAB_5
{
    public class Graph
    {
        private const int Step = 21;

        private readonly int _width;

        private readonly int _height;

        private readonly GeometryGroup _firstClass;

        private readonly GeometryGroup _secondClass;
        private readonly Function _separatingFunction;


        public Graph(Function separatingFunction, double canvasWidth, double canvasHeight) : this(canvasWidth,
            canvasHeight)
        {
            _separatingFunction = separatingFunction;
            DrawingGroup.Children.Add(DrawFunction());
        }

        public Graph(double canvasWidth, double canvasHeight)
        {
            _width = (int) canvasWidth;
            _height = (int) canvasHeight;
            DrawingGroup = CreateDrawingGroup();
            _firstClass = AddEmptyClass(Colors.Blue);
            _secondClass = AddEmptyClass(Colors.Red);
        }

        public DrawingGroup DrawingGroup { get; private set; }

        private DrawingGroup CreateDrawingGroup()
        {
            var result = new DrawingGroup();
            result.Children.Add(AddAxes());
            return result;
        }

        public void AddPoint(Point newPoint, bool toFirstClass)
        {
            var currentClass = toFirstClass ? _firstClass : _secondClass;
            currentClass.Children.Add(
                new EllipseGeometry(
                    new System.Windows.Point(newPoint.X * Step + _width / 2, _height / 2 - newPoint.Y * Step),
                    3, 3));
        }

        private GeometryDrawing DrawFunction()
        {
            var functionGeometryGroup = new GeometryGroup();
            var prevPoint = new System.Windows.Point(0,
                _height / 2 - _separatingFunction.GetY(-_width / 2 / Step) * Step);
            for (double x = -_width / 2 / Step; x < _width / 2 / Step; x += 0.01)
            {
                var nextPoint = new System.Windows.Point(_width / 2 + x * Step,
                    _height / 2 - _separatingFunction.GetY(x) * Step);
                try
                {
                    if (Math.Abs(nextPoint.Y - prevPoint.Y) < _height &&
                        IsLineInGraph(nextPoint, prevPoint))
                    {
                        functionGeometryGroup.Children.Add(new LineGeometry(prevPoint, nextPoint));
                    }
                }
                catch (OverflowException)
                {
                }

                prevPoint = nextPoint;
            }

            var functionBrush = new SolidColorBrush(Colors.LawnGreen);
            var functionDrawing = new GeometryDrawing(functionBrush, new Pen(functionBrush, 3),
                functionGeometryGroup);
            return functionDrawing;
        }

        private bool IsLineInGraph(System.Windows.Point nextPoint,
            System.Windows.Point prevPoint)
        {
            return nextPoint.Y > 0 && nextPoint.Y < _height && prevPoint.Y > 0 &&
                   prevPoint.Y < _height;
        }

        private GeometryDrawing AddAxes()
        {
            var axes = new GeometryGroup();
            axes.Children.Add(new LineGeometry(new System.Windows.Point(0, _height / 2),
                new System.Windows.Point(_width, _height / 2)));
            axes.Children.Add(new LineGeometry(new System.Windows.Point(_width / 2, 0),
                new System.Windows.Point(_width / 2, _height)));
            var axesBrush = new SolidColorBrush(Colors.Black);
            var geometryDrawing = new GeometryDrawing(axesBrush, new Pen(axesBrush, 3), axes);
            return geometryDrawing;
        }

        private GeometryGroup AddEmptyClass(Color color)
        {
            var classGroup = new GeometryGroup();
            var brush = new SolidColorBrush(color);
            var geometryDrawing = new GeometryDrawing(brush, new Pen(brush, 5), classGroup);
            DrawingGroup.Children.Add(geometryDrawing);
            return classGroup;
        }
    }
}