using System;

namespace Ejercicio4
{
    class Program
    {
        static void Main(string[] args)
        {
            int numero1, numero2, numero3;
            Console.WriteLine("Ingrese el primer numero");
            numero1 = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese el segundo numero");
            numero2 = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese el tercer numero");
            numero3 = int.Parse(Console.ReadLine());

            if(numero1 < numero2 && numero2< numero3)
            {
                Console.WriteLine($"en orden va {numero1} - {numero2} - {numero3}");
            }
            else if (numero2 > numero3 && numero1 < numero3)
            {
                Console.WriteLine($"en orden va {numero1} - {numero3} - {numero2}");
            }
            else if (numero1 > numero2 && numero3 < numero2)
            {
                Console.WriteLine($"en orden va {numero3} - {numero2} - {numero1}");
            }else if (numero2 > numero1 && numero3 < numero1)
            {
                Console.WriteLine($"en orden va {numero3} - {numero1} - {numero2}");
            }
            else if (numero3 > numero1 && numero2 < numero1)
            {
                Console.WriteLine($"en orden va {numero2} - {numero1} - {numero3}");
            }
            else if (numero1 > numero3 && numero2 < numero3)
            {
                Console.WriteLine($"en orden va {numero2} - {numero3} - {numero1}");
            }
        }
    }
}
