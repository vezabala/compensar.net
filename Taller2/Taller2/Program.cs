using System;

namespace Taller2
{
    class Program
    {
        static void Main(string[] args)
        {
            //----------------------Taller 2-------------------
            //Punto 1
            Console.WriteLine("-----------------Punto1----------------");
            int numero1, numero2;
            Console.WriteLine("Ingrese el primer numero");
            numero1 = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese el segundo numero");
            numero2 = int.Parse(Console.ReadLine());
            if(numero1 != numero2)
            {
                if(numero1 > numero2)
                {
                    Console.WriteLine($"Los numeros son diferentes y el numero {numero1} es mayor que {numero2}");
                }
                else
                {
                    Console.WriteLine($"Los numeros son diferentes y el numero {numero2} es mayor que {numero1}");
                }
            }
            else
            {
                Console.WriteLine("Los numeros son iguales");
            }

            //Punto 2
            Console.WriteLine("\n\n-----------------Punto2----------------");
            double nota1, nota2, nota3, promedio;
            Console.WriteLine("Ingrese la primera nota");
            nota1 = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese la segunda nota");
            nota2 = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese la tercera nota");
            nota3 = int.Parse(Console.ReadLine());
            if (nota1 < 0 || nota1 > 10 || nota2 < 0 || nota2 > 10 || nota3 < 0 || nota3 > 10)
            {
                Console.WriteLine("ERROR ingreso en una de las notas un valor incorrecto, recuerde que debe ser entre 0 a 10");
            }
            else
            {
                promedio = (nota1 + nota2 + nota3) / 3;
                if (promedio >= 7)
                {
                    Console.WriteLine($"Promocionado promedio = {promedio}");
                }
                else if (promedio >= 4 && promedio < 7)
                {
                    Console.WriteLine($"Regular promedio = {promedio}");
                }
                else if (promedio <4)
                {
                    Console.WriteLine($"Reprobado promedio = {promedio}");
                }
            }

            //Punto 3
            Console.WriteLine("\n\n-----------------Punto3----------------");
            int numero;
            Console.WriteLine("Ingrese un numero positivo");
            numero = int.Parse(Console.ReadLine());
            if (numero < 0)
            {
                Console.WriteLine("ERROR, el numero es negativo");
            }
            else if (numero > 99999)
            {
                Console.WriteLine("ERROR, el numero tiene mas de 5 cifras");
            }
            else if (numero >= 0 && numero < 10)
            {
                Console.WriteLine("El numero tiene 1 cifras");
            }
            else if (numero >= 10 && numero < 100)
            {
                Console.WriteLine("El numero tiene 2 cifras");
            }
            else if (numero >= 100 && numero < 1000)
            {
                Console.WriteLine("El numero tiene 3 cifras");
            }
            else if (numero >= 1000 && numero < 10000)
            {
                Console.WriteLine("El numero tiene 4 cifras");
            }
            else if (numero >= 10000 && numero < 100000)
            {
                Console.WriteLine("El numero tiene 5 cifras");
            }

            //Punto 4
            Console.WriteLine("\n\n-----------------Punto4----------------");
            int cantidadPreguntas = 0, respuestasCorrectas = 0, porcentajeObtenido;
            Console.WriteLine("Ingrese la cantidad de preguntas que hubo en el examen de estado");
            cantidadPreguntas = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese la cantidad de respuestas correctas que tuvo el estudiante en el examen de estado");
            respuestasCorrectas = int.Parse(Console.ReadLine());
            if(respuestasCorrectas < 0)
            {
                Console.WriteLine("ERROR, se ingreso en respuestas correctas un numero negativo");
            }else if(respuestasCorrectas > cantidadPreguntas)
            {
                Console.WriteLine("ERROR, el estudiante no puede tener mas respuestas correctas que la cantidad de preguntas");
            }
            else
            {
                porcentajeObtenido = (respuestasCorrectas * 100) / cantidadPreguntas;
                if(porcentajeObtenido >= 90)
                {
                    Console.WriteLine($"Nivel máximo {porcentajeObtenido}%");
                }else if (porcentajeObtenido >= 75 && porcentajeObtenido < 90)
                {
                    Console.WriteLine($"Nivel medio {porcentajeObtenido}%");
                }
                else if (porcentajeObtenido >= 50 && porcentajeObtenido < 75)
                {
                    Console.WriteLine($"Nivel regular {porcentajeObtenido}%");
                }
                else if (porcentajeObtenido < 50)
                {
                    Console.WriteLine($"Fuera de nivel {porcentajeObtenido}%");
                }
            }

            //Punto 5
            Console.WriteLine("\n\n-----------------Punto5----------------");
            string cedula, nombre;
            double salarioBasico, diasLaborados= 0, sueldoDevengado= 0, salarioMinimoLegal = 1000000, auxilioTransporte = 0;
            double ventas, comicionVentas = 0, totalDevengado, totalDeducciones, salarioNeto ;
            bool condicion = true;
            Console.WriteLine("Ingrese la cedula del trabajador: ");
            cedula = Console.ReadLine();
            Console.WriteLine("Ingrese el nombre del trabajador: ");
            nombre = Console.ReadLine();
            Console.WriteLine("Ingrese el salario basico del trabajador: ");
            salarioBasico = double.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese el valor total de todas las ventas que hizo el trabajador: ");
            ventas = double.Parse(Console.ReadLine());
            Console.WriteLine("Si se le a hecho prestamos al empleado ingrese el valor total de prestamos, de lo contrario ingrese 0");
            totalDeducciones = double.Parse(Console.ReadLine());
            while (condicion == true) {
                Console.WriteLine("Ingrese los dias laborados del trabajador: ");
                diasLaborados = double.Parse(Console.ReadLine());
                if (diasLaborados < 1 || diasLaborados > 30){
                    Console.WriteLine("Error, los dias laborados debe ser entre 1 a 30");
                }
                else
                {
                    condicion = false;
                }
            }
            sueldoDevengado = (salarioBasico * diasLaborados) / 30;
            if(salarioBasico <= (salarioMinimoLegal * 2))
            {
                // suponiendo que el auxilio de transporte legal es $117.172 dividido en 30 dias es = $3905
                auxilioTransporte = (117172 / 30) * diasLaborados;
            }
            if(ventas > 0)
            {
                comicionVentas = ventas * 0.2; 
            }
            totalDevengado = salarioBasico + auxilioTransporte + comicionVentas;
            salarioNeto = totalDevengado - totalDeducciones;
            Console.WriteLine("-----------------------------------\n");
            Console.WriteLine($"Cedula del empleado: {cedula}" +
                $"\nNombre empleado: {nombre}" +
                $"\nSalario basico: {salarioBasico}" +
                $"\nAuxilio de transporte: {auxilioTransporte}" +
                $"\nComición ventas: {comicionVentas}" +
                $"\nPrestamos: {totalDeducciones}" +
                $"\nSalario neto a recibir: {salarioNeto}");

            //Punto 6
            Console.WriteLine("\n\n-----------------Punto6----------------");
            int num, a, b, c, d;
            Console.WriteLine("Ingrese un numero de 4 cifras: ");
            num = int.Parse(Console.ReadLine());
            if(num <1000 || num > 9999)
            {
                Console.WriteLine("Error, el numero que se incerte debe ser de 4 digitos");
            }
            else
            {
                a = num % 10;
                num = (num - a) / 10;
                b = num % 10;
                num = (num - b) / 10;
                c = num % 10;
                num = (num - c) / 10;
                d = num;
                if(a != b && a != c && a != d && b != c && b != d && c != d)
                {
                    Console.WriteLine($"{a}{b}{c}{d}");
                }
                else
                {
                    Console.WriteLine("Hay cifras iguales en el numero digitado");
                }
            }
            Console.ReadKey();
        }

    }
}
