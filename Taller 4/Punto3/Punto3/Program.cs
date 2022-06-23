using System;

namespace Punto3
{
    class Program
    {
        public double sumatoria = 0;
        static void Main(string[] args)
        {
            double n;
            Program program = new Program();
            Console.WriteLine("Ingrese el valor de n, para calcular la sumatoria de los primeros n terminos de la serie (i*(i+1))^2");
            n = double.Parse(Console.ReadLine());
            Console.WriteLine($"\nLa sumatoria de los primeros {n} terminos de la serie es igual a {program.calcularSumatoria(n)}");
        }
        public double calcularSumatoria(double n)
        {
            for (double i = 1; i <= n; i++)
            {
                sumatoria += Math.Pow(i*(i+1), 2);
            }
            return sumatoria;
        }
    }
}
