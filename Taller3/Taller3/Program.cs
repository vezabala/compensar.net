using System;

namespace Taller3
{
    class Program
    {
        static void Main(string[] args)
        {
            //Punto 1
            Console.WriteLine("-------------------------Punto1-------------------------");
            int cont = 0;
            double nota = 0, suma = 0, promedio;
            while (nota >= 0)
            {
                Console.WriteLine("Digite un numero (si digita un numero negativo termina el proceso)");
                nota = double.Parse(Console.ReadLine());
                if(nota >= 0)
                {
                    suma += nota;
                    cont += 1;
                }
            }
            promedio = suma / cont;
            Console.WriteLine($"Promedio = {promedio}");

            //Punto 2
            Console.WriteLine("\n\n-------------------------Punto2-------------------------");
            double petroleo = 100, minutos = 5;
            while (petroleo < 1000)
            {
                petroleo += (petroleo * 0.07);
                minutos += 5;
            }
            Console.WriteLine($"Para que la mancha de petroleo llegue a los 1000 mts cuadrados debe pasar {minutos} minutos");

            //Punto 4
            Console.WriteLine("\n\n-------------------------Punto4-------------------------");
            double x, sumaPunto4 = 0, i = 1, formula;
            bool condicion = true;
            Console.WriteLine("Ingrese el valor de x");
            x = int.Parse(Console.ReadLine());
            Console.WriteLine("\nSerie: ");
            while (condicion == true)
            {
                formula = Math.Pow((i * 2), 2);
                sumaPunto4 += formula;
                if (sumaPunto4 < x)
                {
                    Console.WriteLine(formula);
                    i++;
                }
                else
                {
                    condicion = false;
                }
            }

            //Punto 5
            Console.WriteLine("\n\n-------------------------Punto5-------------------------");
            double facultades = 5, estudiantes, valorLaboratorio, estratoEstudiante, matriculaEstudiante,acumMatriculaEstudiante, acum = 0;
            for (int j = 1; j <= facultades; j++)
            {
                estudiantes = 0;
                valorLaboratorio = 0;
                acumMatriculaEstudiante = 0;
                Console.WriteLine($"Ingrese el valor del laboratorio de la facultad {j}");
                valorLaboratorio = int.Parse(Console.ReadLine());
                Console.WriteLine($"Ingrese cuantos estudiantes matriculados hay en la facultad {j}");
                estudiantes = int.Parse(Console.ReadLine());
                for (int k = 1; k <= estudiantes; k++)
                {
                    matriculaEstudiante = 0;
                    Console.WriteLine($"Ingresa el estrato del estudiante {k}");
                    estratoEstudiante = int.Parse(Console.ReadLine());
                    if (estratoEstudiante <= 3)
                    {
                        matriculaEstudiante = valorLaboratorio - (valorLaboratorio * 0.10);
                    }
                    else
                    {
                        matriculaEstudiante = valorLaboratorio;
                    }
                    acumMatriculaEstudiante += matriculaEstudiante;
                }
                acum += acumMatriculaEstudiante; 
                Console.WriteLine($"\n\nEl promedio de matrucula en la facultad {j} es de ${acumMatriculaEstudiante / estudiantes} \n");
            }
            Console.WriteLine($"\nEl promedio de matricula de la universidad XYZ es de ${acum/facultades}");
            Console.ReadKey();
        }
    }
}
