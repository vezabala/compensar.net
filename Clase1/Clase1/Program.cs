using System;

namespace Clase1
{
    class Program
    {
        static void Main(string[] args)
        {
            string apellidos;
            string edad;
            double estatura;
            bool estudiante;
            string nombres;
            double salario;
            Console.WriteLine("Digite sus Apellidos");
            apellidos = Console.ReadLine();
            Console.WriteLine("Digite sus Nombres");
            nombres = Console.ReadLine();
            Console.WriteLine("Digite su edad");
            edad = Console.ReadLine();
            Console.WriteLine("Digite su salario");
            salario = Double.Parse(Console.ReadLine());
            Console.WriteLine("Digite su estatura en metros");
            estatura = Double.Parse(Console.ReadLine());
            Console.WriteLine("Es estudiante");
            estudiante = Boolean.Parse(Console.ReadLine());
            // imprimir
            Console.WriteLine("Sus Apellidos.." + apellidos);
            Console.WriteLine("Sus Nombres.." + nombres);
            Console.WriteLine("Sus Edad.." + edad);
            Console.WriteLine("Su Salario.." + salario);
        }
    }
}
