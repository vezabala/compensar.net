using System;
using System.Collections.Generic;

namespace EjercicioCiclo
{
    class Program
    {
        static void Main(string[] args)
        {
            List<double> notas = new List<double>();
            bool condicion = true;
            double suma= 0, promedio, conteo = 0;
            while (condicion == true){
                string salirBucle= "";
                bool condidion2 = true;
                Console.WriteLine("Ingrese la nota");
                notas.Add(double.Parse(Console.ReadLine()));
                while (condidion2 == true)
                {
                    Console.WriteLine("¿Desea agregar otra nota? escriba SI o NO");
                    salirBucle = Console.ReadLine().ToUpper();
                    if (salirBucle.Equals("SI")){
                        condidion2 = false;
                    }
                    else if (salirBucle.Equals("NO"))
                    {
                        condidion2 = false;
                        condicion = false;
                    }
                    else
                    {
                        Console.WriteLine("Ingreso un valor incorrecto porfavor ingrese SI o NO");
                    }
                }
            }
            foreach (var item in notas)
            {
                suma += item;
                conteo += 1;
            }
            promedio = suma / conteo;
            Console.WriteLine($"El promedio es: {promedio}");
        }
    }
}
