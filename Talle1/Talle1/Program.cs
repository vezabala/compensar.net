using System;

namespace Talle1
{
    class Program
    {
        static void Main(string[] args)
        {
            //Punto 1
            int varones, mujeres, total;
            Console.WriteLine("----------------------Punto 1-------------------------");
            Console.WriteLine("Ingrese la cantidad de varones que hay en el salon de clases: ");
            varones = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese la cantidad de mujeres que hay en el salon de clases: ");
            mujeres = int.Parse(Console.ReadLine());
            total = varones + mujeres;
            Console.WriteLine("El porcentaje de varones es "+ varones*100/total +"% y el de mujeres es " + mujeres * 100 / total + "%");
            //Punto 2
            Console.WriteLine("\n\n----------------------Punto 2-------------------------");
            double minutos, segundos, centecimasSegundos, metros, horas, kilometros, kilometrosHora;
            Console.WriteLine("Ingrese cuantos minutos se demoro en correr el atleta");
            minutos = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese cuantos segundos se demoro en correr el atleta");
            segundos = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese cuantos centecimas de segundos se demoro en correr el atleta");
            centecimasSegundos = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese cuantos metros corrio el atleta");
            metros = int.Parse(Console.ReadLine());
            horas = minutos / 60 + segundos / Math.Pow(60,2) + centecimasSegundos / (Math.Pow(60, 2)*100);
            kilometros = metros / 1000;
            kilometrosHora = kilometros / horas;
            Console.WriteLine("La velocidad promedio del atleta fue: "+ kilometrosHora + " km/hr");
            //Punto 3 
            Console.WriteLine("\n\n----------------------Punto 3-------------------------");
            double venta1, venta2, venta3, totalVentas, totalDevengado;
            Console.WriteLine("Ingrese el valor de la venta 1");
            venta1 = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese el valor de la venta 2");
            venta2 = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese el valor de la venta 3");
            venta3 = int.Parse(Console.ReadLine());
            totalVentas = venta1 + venta2 + venta3;
            totalDevengado = 250000 + totalVentas * 0.12;
            Console.WriteLine("El sueldo neto del vendedor es: " + totalDevengado);
            //Punto 4
            Console.WriteLine("\n\n----------------------Punto 4-------------------------");
            double soles, dolares, marcos, totalEuros, rubro1, rubro2, rubro3;
            Console.WriteLine("Ingrese el valor de lo que se recibio en soles de las donaciones");
            soles = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese el valor de lo que se recibio en dolares de las donaciones");
            dolares = int.Parse(Console.ReadLine());
            Console.WriteLine("Ingrese el valor de lo que se recibio en marcos de las donaciones");
            marcos = int.Parse(Console.ReadLine());
            totalEuros = (soles / 3.52 + +dolares + marcos / 2.08) * 1.07;
            rubro1 = totalEuros * 0.5;
            rubro2 = totalEuros * 0.4;
            rubro3 = totalEuros * 0.1;
            Console.WriteLine("Para el rubro del centro de salud se le reparte " + rubro1 + " Euros para el rubro del comedor de niños se le reparte " + rubro2 + " Euros y para los gastos administrativos " + rubro3 + " Euros");
        }
    }
}
