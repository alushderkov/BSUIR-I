using System.Windows;

namespace HierarchyAlgorithm
{
    public class Line
    {
        public Line(Point from, Point to, string xName, string yName)
        {
            From = from;
            To = to;
            XName = xName;
            YName = yName;
        }

        public Point From { get; set; }
        public Point To { get; set; }
        public string XName { get; }
        public string YName { get; }
    }
}