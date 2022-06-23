using System;

namespace EjercicioMultiplicacion
{
    class Program
    {
        static void Main(string[] args)
        {
            int i;
            int j;
            double acumulador, promedio;
            for (i = 1; i <= 10; i++)
            {//ciclo multiplicando
                acumulador = 0;
                for (j = 1; j <= 10; j++)
                { //multiplicador
                    Console.WriteLine(i + " * " + j + " = " + i * j);
                    int mult = i * j;
                    acumulador += Convert.ToDouble(mult);
                }
                promedio = acumulador / 10;
                Console.WriteLine($"Promedio = {promedio}");
                Console.WriteLine("\n");
            }
            Console.ReadKey();
        }
    }
}
