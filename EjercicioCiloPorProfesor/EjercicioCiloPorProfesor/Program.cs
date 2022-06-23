using System;

namespace EjercicioCiloPorProfesor
{
    class Program
    {
        static void Main(string[] args)
        {
            int terminar = 1, cont = 0;
            double nota = 0, suma = 0, promedio;

            Console.WriteLine("Ciclo While ");

            while (terminar > 0)
            {//sentencia de finalización
                //pedimos notas

                Console.WriteLine("Digite calificación");
                nota = double.Parse(Console.ReadLine());
                suma += nota;
                cont += 1;

                Console.WriteLine("Digite -1 para terminar");
                terminar = int.Parse(Console.ReadLine());
            }
            promedio = suma / cont;
            Console.WriteLine($"Promedio = {promedio}");
        }
    }
}
