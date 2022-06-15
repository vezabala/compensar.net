using System;

namespace Prueba
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(((7+8)*(156 % 15))/(2*3));

            int i, b = 5, suma = 0, a = 2;
            for (i = 1; i <= b; i++)
            {
                suma = suma + a;
            }
            Console.WriteLine(" " + a + " " + suma);

            Console.WriteLine("\n\n");
            Console.ReadKey();
        }
    }
}
