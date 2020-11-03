using System;

namespace acronymGenerator
{
    class Program
    {
        static void Main(string[] args)
        {   
            
            Console.WriteLine("Enter strings to convert to acronym");
            string acronym = Console.ReadLine();
            string[] acronym2 = acronym.Split(' ');
            
            foreach(string i in acronym2){
                string capitalLetter = i.ToUpper();
                Console.Write(capitalLetter[0]);
            }
            
        }
    }
}
