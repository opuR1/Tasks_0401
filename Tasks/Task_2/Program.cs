using System;
using System.Collections.Generic;
using System.Text;

namespace Task_2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Введите ОПР");
            string input = Console.ReadLine();
            string[] RPN = input.Split(" ");
            Stack<double> stack = new Stack<double>();

            foreach(string token in RPN)
            {
                if (double.TryParse(token, out double number))
                {
                    stack.Push(number);
                }
                else if (token == "+" || token == "-" || token == "*" || token == "/" || token == "^")
                {
                    if (stack.Count < 2)
                    {
                        return;
                    }

                    double b = stack.Pop();
                    double a = stack.Pop();

                    double res = 0;

                    switch(token)
                    {
                        case "+":
                            res = a + b; break;
                        case "-":
                            res = a - b; break;
                        case "*":
                            res = a * b; break;
                        case "/":
                            res = a / b; break;
                        case "^":
                            res = Math.Pow(a, b); break;
                    }

                    stack.Push(res);
                }
                else
                {
                    return;
                }

            }
            if (stack.Count == 1)
            {
                Console.WriteLine($"{stack.Pop()}");
            }
            else
            {
                Console.WriteLine($"Ошибка!");
                return;
            }

        }
    }
}
