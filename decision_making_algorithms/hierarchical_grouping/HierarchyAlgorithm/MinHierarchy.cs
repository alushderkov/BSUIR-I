using System.Collections.Generic;
using System.Linq;

namespace HierarchyAlgorithm
{
    public class MinHierarchy : Hierarchy
    {
        public MinHierarchy(int elementsCount, int width, int height)
            : base(elementsCount, width, height)
        {
        }

        protected override int MinMaxStartValue => int.MaxValue;

        protected override int GetYStep(IEnumerable<Line> list)
        {
            return (int) ((Height - DownSpace) / list.Max(x => x.From.Y));
        }

        protected override double GetCurrentY(double distance)
        {
            return Height - distance * YStep;
        }

        protected override int GetMinMax(int first, int second)
        {
            return first < second ? first : second;
        }

        protected override string GetYString(int distance)
        {
            return distance.ToString();
        }

        protected override bool CompareMinMax(int first, int second)
        {
            return first < second;
        }
    }
}