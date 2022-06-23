using System;

namespace EjerciciosAlgoritmosOperaciones
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("----------------Divicion-------------------------");
            int dividendo, divisor, cociente = 0;
            Console.WriteLine("Ingrese el dividendo");
            dividendo = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese el divisor");
            divisor = int.Parse(Console.ReadLine());
            while(dividendo >= divisor)
            {
                dividendo -= divisor;
                cociente += 1;
            }
            Console.WriteLine($"residuo = {dividendo}, cociente = {cociente}");

            Console.WriteLine("\n\n----------------Multiplicacion-------------------------");
            int multiplicando, multiplicador,producto = 0;
            Console.WriteLine("Ingrese el multiplicando");
            multiplicando = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese el multiplicador");
            multiplicador = int.Parse(Console.ReadLine());
            for (int i = 1; i <= multiplicador; i++)
            {
                producto += multiplicando;
            }
            Console.WriteLine($"Producto= {producto}");
        }
    }
}
