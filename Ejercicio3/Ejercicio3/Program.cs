using System;
//hallar desempeño de acuerdo al promedio, leer tres notas
//1.Bajo entre 0 y <6 , 2.Básico entre 6 y < 8
//3.Alto entre 8 y < 9, 4.entre 9 y 10 superior
//notas inferiores a 0 ó superiores a 10 mensaje
//indicando el error
namespace Ejercicio3
{
    class Program
    {
        static void Main(string[] args)
        {
            double nota1, nota2, nota3, promedio;
            Console.WriteLine("Ingrese la primera nota");
            nota1 = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese la segunda nota");
            nota2 = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese la tercera nota");
            nota3 = int.Parse(Console.ReadLine());
            if(nota1 < 0 || nota1 > 10 || nota2 < 0 || nota2 > 10 || nota3 < 0 || nota3 > 10)
            {
                Console.WriteLine("ERROR ingreso en una de las notas un valor incorrecto");
            }
            else
            {
                promedio = (nota1 + nota2 + nota3) / 3;
                if(promedio >= 0 && promedio < 6)
                {
                    Console.WriteLine($"Desempeño Bajo {promedio}");
                }else if(promedio >= 6 && promedio < 8)
                {
                    Console.WriteLine($"Desempeño Básico {promedio}");
                }
                else if (promedio >= 8 && promedio < 9)
                {
                    Console.WriteLine($"Desempeño Alto {promedio}");
                }
                else if (promedio >= 9 && promedio < 10)
                {
                    Console.WriteLine($"Desempeño Superior {promedio}");
                }
            }
            Console.ReadKey();

        }
    }
}
