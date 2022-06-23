using System;

namespace Punto2
{
    class Program
    {
        static void Main(string[] args)
        {

            Program programa = new Program();
            int x = 0, y = 0;
            while (x >= y)
            {
                Console.WriteLine("ingrese el valor de x");
                x = int.Parse(Console.ReadLine());
                Console.WriteLine("ingrese el valor de y");
                y = int.Parse(Console.ReadLine());
                if (x >= y)
                {
                    Console.WriteLine($"Error x debe ser inferior a y, vuelva intentarlo");
                }
            }
            Console.WriteLine($"La serie de los numeros primos entre {x} y {y} son");
            programa.imprimirPrimos(x,y);
        }
        public void imprimirPrimos(int x, int y)
        {
            int cont = 0;
            for (int i = x; i <= y; i++)
            { //genera números
                for (int j = 1; j <= i; j++)//genera divisores
                {
                    if (i % j == 0)
                    {//si j es divisor de i
                        cont++;
                    }

                }

                if (cont == 2)
                {
                    Console.WriteLine(i);
                }
                cont = 0;
            }
        }
    }
}