using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace DMMaA_LAB_4
{
    public class Perceptron
    {
        private class PerceptronClass
        {
            public readonly List<PerceptronObject> Objects = new List<PerceptronObject>();
        }

        public class PerceptronObject
        {
            public readonly List<int> Attributes = new List<int>();
        }

        private const int C = 1;
        private const int Random = 10;
        private const int MaxIterationsCount = 10000;

        private readonly int _classesCount;
        private readonly int _objectsInClassCount;
        private readonly int _attributesCount;
        private readonly List<PerceptronClass> _classes = new List<PerceptronClass>();
        private readonly List<PerceptronObject> _weights = new List<PerceptronObject>();
        private List<PerceptronObject> _decisionFunctions;
        private readonly List<int> _decisions = new List<int>();

        public Perceptron(int classes, int objectsInClass, int attribute)
        {
            _classesCount = classes;
            _objectsInClassCount = objectsInClass;
            _attributesCount = attribute;
        }

        public void Calculate()
        {
            CreateRandomClasses();
            CalculateDecisionFunctions();
        }

        private void CreateRandomClasses()
        {
            var rand = new Random();

            for (var i = 0; i < _classesCount; i++)
            {
                var currentClass = new PerceptronClass();

                for (var j = 0; j < _objectsInClassCount; j++)
                {
                    var currentObject = new PerceptronObject();

                    for (var k = 0; k < _attributesCount; k++)
                        currentObject.Attributes.Add(rand.Next(Random) - Random / 2);

                    currentClass.Objects.Add(currentObject);
                }
                _classes.Add(currentClass);
            }

            foreach (var weight in _classes.Select(perceptronClass => new PerceptronObject()))
            {
                for (var i = 0; i <= _attributesCount; i++)
                    weight.Attributes.Add(0);

                _weights.Add(weight);
                _decisions.Add(0);
            }

            foreach (var perceptronObject in _classes.SelectMany(perceptronClass => perceptronClass.Objects))
                perceptronObject.Attributes.Add(1);
        }

        private void CalculateDecisionFunctions()
        {
            var IsClassification = true;
            var iteration = 0;

            while (IsClassification && (iteration < MaxIterationsCount))
            {
                for (var i = 0; i < _classes.Count; i++)
                {
                    var currentClass = _classes[i];
                    var currentWeight = _weights[i];

                    foreach (var currentObject in currentClass.Objects)
                    {
                        IsClassification = CorrectWeight(currentObject, currentWeight, i);
                    }
                }
                iteration++;
            }

            if (iteration == MaxIterationsCount)
                MessageBox.Show($"Количество итераций превысило {MaxIterationsCount}.{Environment.NewLine}Решаюшие функции, возможно, найдены неправильно.");

            _decisionFunctions = _weights;
        }

        private bool CorrectWeight(PerceptronObject currentObject,
            PerceptronObject currentWeight, int classNumber)
        {
            var result = false;
            var objectDecision = ObjectMultiplication(currentWeight, currentObject);

            for (var i = 0; i < _weights.Count; i++)
            {
                _decisions[i] = ObjectMultiplication(_weights[i], currentObject);

                if (i == classNumber) continue;
                var currentDecision = _decisions[i];
                if (objectDecision > currentDecision) continue;
                ChangeWeight(_weights[i], currentObject, -1);

                result = true;
            }
            if (result)
                ChangeWeight(currentWeight, currentObject, 1);

            return result;
        }

        private static int ObjectMultiplication(PerceptronObject weight, PerceptronObject obj)
        {
            return weight.Attributes.Select((t, i) => t * obj.Attributes[i]).Sum();
        }

        private static void ChangeWeight(PerceptronObject weight, PerceptronObject perceptronObject, int sign)
        {
            for (var i = 0; i < weight.Attributes.Count; i++)
            {
                weight.Attributes[i] += sign * perceptronObject.Attributes[i];
            }
        }

        public void FillListViews(ListView listViewSelection, ListView listViewSolutions)
        {
            var indexCurrentClass = 1;

            foreach (var currentClass in _classes)
            {
                var indexCurrentObject = 1;
                CreatingElementsTool.CreateTextBlockOnListView($"Класс {indexCurrentClass}:",
                    listViewSelection);
                foreach (var currentObject in currentClass.Objects)
                {
                    var str = $"\tОбъект {indexCurrentObject}: (";

                    for (var j = 0; j < currentObject.Attributes.Count - 1; j++)
                    {
                        var attribute = currentObject.Attributes[j];
                        str += attribute + ",";
                    }
                    str = str.Remove(str.Length - 1, 1);
                    str += ")";
                    CreatingElementsTool.CreateTextBlockOnListView(str, listViewSelection);
                    indexCurrentObject++;
                }
                CreatingElementsTool.CreateTextBlockOnListView("", listViewSelection);
                indexCurrentClass++;
            }

            for (var i = 0; i < _decisionFunctions.Count; i++)
            {
                var str = $"d{i + 1}(x) = ";

                for (var j = 0; j < _decisionFunctions[i].Attributes.Count; j++)
                {
                    var attribute = _decisionFunctions[i].Attributes[j];

                    if (j < _decisionFunctions[i].Attributes.Count - 1)
                        if (attribute >= 0 && j != 0)
                            str += "+" + attribute + $"*x{j + 1}";
                        else
                            str += attribute + $"*x{j + 1}";
                    else
                        if (attribute >= 0 && j != 0)
                        str += "+" + attribute;
                    else
                        str += attribute;
                }
                CreatingElementsTool.CreateTextBlockOnListView(str, listViewSolutions);
            }
        }

        public int FindClass(PerceptronObject perceptronObject)
        {
            var resultClass = 0;

            perceptronObject.Attributes.Add(1);
            var decisionMax = ObjectMultiplication(_weights[0], perceptronObject);

            for (var i = 1; i < _weights.Count; i++)
            {
                var weight = _weights[i];

                if (ObjectMultiplication(weight, perceptronObject) <= decisionMax) continue;
                decisionMax = ObjectMultiplication(weight, perceptronObject);
                resultClass = i;
            }

            return (resultClass + 1);
        }
    }
}