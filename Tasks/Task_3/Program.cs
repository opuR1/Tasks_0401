using System;
using System.Collections.Generic;
using System.Text;

namespace Task_3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string word1 = Console.ReadLine();
            string word2 = Console.ReadLine();
            if (word1.Length != word2.Length)
            {
                Console.WriteLine("NO");
                return;
            }

            char[] words1 = word1.ToCharArray();
            char[] words2 = word2.ToCharArray();

            Array.Sort(words1);
            Array.Sort(words2);

            if (new string(words1) == new string(words2))
            {
                Console.WriteLine("YES");
            }
            else
            {
                Console.WriteLine("NO");
            }
        }
    }
}
