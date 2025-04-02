using System;
using System.Collections.Generic;
using System.Linq;

namespace HierarchyAlgorithm
{
    public class InvertMaxHierarchy : Hierarchy
    {
        public InvertMaxHierarchy(int elementsCount, int width, int height)
            : base(elementsCount, width, height)
        {
        }

        protected override int MinMaxStartValue => 0;

        protected override int GetYStep(IEnumerable<Line> list)
        {
            return
                (int)
                ((Height - DownSpace) *
                 list.Where(x => Math.Abs(x.From.Y - x.To.Y) < 0.01).Min(x => x.From.Y));
        }

        protected override double GetCurrentY(double distance)
        {
            return Math.Abs(distance) < 0.01 ? Height : Height - YStep / distance;
        }

        protected override int GetMinMax(int first, int second)
        {
            return first > second ? first : second;
        }

        protected override string GetYString(int distance)
        {
            return $"1/{distance}";
        }

        protected override bool CompareMinMax(int first, int second)
        {
            return first > second;
        }
    }
}