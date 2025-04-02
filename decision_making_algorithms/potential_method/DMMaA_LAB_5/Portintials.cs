using System;
using System.Drawing;

namespace DMMaA_LAB_5
{
    public class Potintials
    {
        private const int ClassCount = 2;

        private const int IterationsCount = 50;

        private int _correction;

        public bool Warning { get; private set; }

        public Function GetFunction(Point[][] teachingPoints)
        {
            var result = new Function(0, 0, 0, 0);
            _correction = 1;
            Warning = false;
            var nextIteration = true;
            var iterationNumber = 0;
            while (nextIteration && iterationNumber < IterationsCount)
            {
                iterationNumber++;
                nextIteration = DoOneIteration(teachingPoints, ref result);
            }

            if (iterationNumber == IterationsCount) Warning = true;
            return result;
        }

        private bool DoOneIteration(Point[][] teachingPoints, ref Function result)
        {
            var nextIteration = false;

            if (teachingPoints.Length != ClassCount) throw new Exception();

            for (var classNumber = 0; classNumber < ClassCount; classNumber++)
            {
                for (var i = 0; i < teachingPoints[classNumber].Length; i++)
                {
                    result += _correction * PartFunction(teachingPoints[classNumber][i]);
                    var index = (i + 1) % teachingPoints[classNumber].Length;
                    var nextClassNumber = index == 0 ? (classNumber + 1) % ClassCount : classNumber;
                    var nextPoint = teachingPoints[nextClassNumber][index];
                    _correction = GetNewCorrection(nextPoint, result, nextClassNumber);
                    if (_correction != 0) nextIteration = true;
                }
            }

            return nextIteration;
        }

        private static int GetNewCorrection(Point nextPoint, Function result, int nextClassNumber)
        {
            var functionValue = result.GetValue(nextPoint);
            if (functionValue <= 0 && nextClassNumber == 0)
            {
                return 1;
            }

            if (functionValue > 0 && nextClassNumber == 1)
            {
                return -1;
            }

            return 0;
        }


        private static Function PartFunction(Point point)
        {
            return new Function(4 * point.X, 4 * point.Y, 16 * point.X * point.Y, 1);
        }
    }
}