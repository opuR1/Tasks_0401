using System;
using System.Collections.Generic;
using System.Text;

namespace Tasks
{
    internal class Task_1
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Введите двузначные числа через пробел:");
            string input = Console.ReadLine();
            string[] doubleNumbers = input.Split(" ");
            foreach (string number in doubleNumbers)
            {
                int numb = Convert.ToInt32(number);
                if (numb < 10 || numb > 99)
                {
                    Console.WriteLine("Введите двузначные числа!");
                    return;
                }
            }
            Dictionary<int, List<string>> groups = new Dictionary<int, List<string>>();
            foreach(string number in doubleNumbers)
            {
                int num = Convert.ToInt32(number);
                int product = (num / 10) * (num % 10);
                if (!groups.ContainsKey(product))
                {
                    groups[product] = new List<string>();
                }
                groups[product].Add(number);
            }
            int maxCount = 0;
            List<string> bestChain = null;
            foreach (var group in groups)
            {
                if(group.Value.Count > maxCount)
                {
                    maxCount = group.Value.Count;
                    bestChain = group.Value;
                }
            }

            Console.WriteLine($"Максимальная длина цепочки = {maxCount}\nЦепочка:\n{string.Join(" ", bestChain)}");

            
        }
    }
}
