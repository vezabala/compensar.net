using System;

namespace Punto1
{
    class Program
    {
        static void Main(string[] args)
        {
            string nombre, apellido, edad;
            Console.WriteLine("Ingrese el nombre del empleado");
            Program pr = new Program();
            nombre = Console.ReadLine();
            Console.WriteLine("Ingrese el apellido del empleado");
            apellido = Console.ReadLine();
            Console.WriteLine("Ingrese la edad del empleado");
            edad = Console.ReadLine();
            pr.imprimir(nombre, apellido, edad);
        }
        public void imprimir(string nm, string ap, string ed)
        {
            Console.WriteLine($"\nNombre del empleado: {nm}\nApellido del empleado: {ap}\nEdad del empleado: {ed} años");
        }
    }
}
