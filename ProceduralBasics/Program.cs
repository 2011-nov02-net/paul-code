using System;

namespace ProceduralBasics
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter a number: ");
            string input = Console.ReadLine();
            int number = int.Parse(input);
            for (int i = 0; i < number; i++)
            {
                // each iteration of this loop prints one whole line.
                for (int j = 0; j < i + 1; j++)
                {
                    // each iteration of this loop just prints one character
                    Console.Write("#");
                }
                Console.WriteLine(); // just a line break
                // i could also just have printed this, without the inner loop:
                
            }
        }
    }
}
