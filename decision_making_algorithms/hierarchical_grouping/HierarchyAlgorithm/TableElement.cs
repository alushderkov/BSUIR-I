using System.Windows;

namespace HierarchyAlgorithm
{
    public class TableElement
    {
        private TableElement(int number, Point position, string name)
        {
            Number = number;
            Position = position;
            Name = name;
        }

        public TableElement(int number)
            : this(number, new Point(0, 0), $"x{number}")
        {
        }

        public int Number { get; }
        public Point Position { get; set; }
        public string Name { get; set; }
    }
}