using System;
using System.Collections.Generic;
using System.Text;

namespace Task_4
{
    internal class Program
    {
        static int M, N;
        static int[,] maze;
        static bool[,] visited;
        static int endX, endY;
        static List<string> path = new List<string>();

        static void Main(string[] args)
        {
            string[] size = Console.ReadLine().Split(' ');
            M = int.Parse(size[0]);
            N = int.Parse(size[1]);

            maze = new int[M, N];
            visited = new bool[M, N];
            for (int i = 0; i < M; i++)
            {
                string[] row = Console.ReadLine().Split(' ');
                for (int j = 0; j < N; j++)
                {
                    maze[i, j] = int.Parse(row[j]);
                }
            }

            string[] start = Console.ReadLine().Split(' ');
            int startX = int.Parse(start[0]);
            int startY = int.Parse(start[1]);

            string[] end = Console.ReadLine().Split(' ');
            endX = int.Parse(end[0]);
            endY = int.Parse(end[1]);

            if (FindPath(startX, startY))
            {
                foreach(string step in path)
                {
                    Console.WriteLine(step);
                }
            }    
            else
            {
                Console.WriteLine("Нет решения.");
            }

        }

        static bool FindPath(int x, int y)
        {
            if (x < 0 || x >= M || y < 0 || y >= N) return false;
            if (maze[x, y] == 1 || visited[x, y]) return false;

            visited[x, y] = true;

            path.Add($"{x},{y}");

            if (x == endX && y == endY) return true;

            if (FindPath(x, y + 1)) return true;
            if (FindPath(x + 1, y)) return true;
            if (FindPath(x - 1, y)) return true;
            if (FindPath(x, y - 1)) return true;

            path.RemoveAt(path.Count - 1);

            return false;
        }
    }
}
