using System.Drawing;

namespace DMMaA_LAB_5
{
    public class Function
    {
        public Function(int xKoeff, int yKoeff, int xyKoeff, int freeKoeff)
        {
            XKoeff = xKoeff;
            YKoeff = yKoeff;
            XyKoeff = xyKoeff;
            FreeKoeff = freeKoeff;
        }

        private int XKoeff { get; set; }
        private int YKoeff { get; set; }
        private int XyKoeff { get; set; }
        private int FreeKoeff { get; set; }


        public int GetValue(Point point)
        {
            return FreeKoeff + XKoeff * point.X + YKoeff * point.Y + XyKoeff * point.X * point.Y;
        }

        public double GetY(double x)
        {
            return -(XKoeff * x + FreeKoeff) / (XyKoeff * x + YKoeff);
        }

        public override string ToString()
        {
            if (XyKoeff != 0)
            {
                return
                    $"y=({-XKoeff}*x{(-FreeKoeff < 0 ? "" : "+")}{-FreeKoeff})/({XyKoeff}*x{(YKoeff < 0 ? "" : "+")}{YKoeff})";
            }
            if (YKoeff != 0)
            {
                return
                    $"y={-(double) XKoeff / YKoeff}*x{(-(double) FreeKoeff / YKoeff < 0 ? "" : "+")}{-(double) FreeKoeff / YKoeff}";
            }
            return $"x={-(double) FreeKoeff / XKoeff}";
        }

        public static Function operator +(Function first, Function second)
        {
            return new Function(first.XKoeff + second.XKoeff, first.YKoeff + second.YKoeff,
                first.XyKoeff + second.XyKoeff, first.FreeKoeff + second.FreeKoeff);
        }

        public static Function operator *(int koeff, Function function)
        {
            return new Function(koeff * function.XKoeff, koeff * function.YKoeff, koeff * function.XyKoeff,
                koeff * function.FreeKoeff);
        }
    }
}