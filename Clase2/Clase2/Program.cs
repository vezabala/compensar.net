using System;

namespace Clase2
{
    class Program
    {
        static void Main(string[] args)
        {
            int a, b;
            int c;
            Console.WriteLine("Ingrese el primer numero");//mensaje pedir al usuario primer número
            a = int.Parse(Console.ReadLine()); //se lee el valor en la línea y se le asigna a la variable a
            Console.WriteLine("Ingrese el segundo numero");
            b = int.Parse(Console.ReadLine());
            c = a * b;
            if (c >= 30)
            {  //primer posibilidad
                Console.WriteLine("Es correcto");
            }
            /* else
             {
                 Console.WriteLine("No es correcto");
             }*/
            if (c < 30)
            {
                Console.WriteLine("No es correcto");
            }
            Console.ReadKey();
        }
    }
}
