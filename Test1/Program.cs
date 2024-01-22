using System;
using System.Net.NetworkInformation;
using static System.Runtime.InteropServices.JavaScript.JSType;
class Program
{
    static void Main()
    {
        DisplayNumbers();
        DoWhileloop();
        Squares();
        sumofevennumbers();
        positiveornegative();
        Factorial();
        fibonacci();
        breakexample();
        LargestofthreeNumbers();
        displaymessage();
        Console.ReadLine();
    }

    static void DisplayNumbers()
    {
        int i = 1;
        Console.WriteLine("Numbers from 1 to 5 using a while loop:");
        while (i <= 5)
        {
            Console.WriteLine(i);
            i++;
        }
    }
    static void DoWhileloop()
    {
        int i = 1;
        Console.WriteLine("Numbers from 1 to 5 using a do-while loop:");
        do
        {
            Console.WriteLine(i);
            i++;
        } while (i <= 5);
    }
    static void Squares()
    {
        int square;
        Console.WriteLine("Squares of numbers from 1 to 4:");
        for (int i = 1; i <= 4; i++)
        {
            square = i * i;
            Console.WriteLine(square);
        }
    }
    static void sumofevennumbers()
    {
        int sum = 0;
        for (int i = 1; i <= 8; i++)
        {
            if (i % 2 == 0)
            {
                sum = sum + i;
            }
        }
        Console.WriteLine($"Sum of even numbers from 1 to 8:{sum}");
    }

    static void positiveornegative()
    {
        int number = -5;
        if (number > 0)
        {
            Console.WriteLine($"{number} is positive");
        }
        else if (number < 0)
        {
            Console.WriteLine($"{number} is negative");
        }
        else
        {
            Console.WriteLine($"{number} is zero");
        }
    }
    static void Factorial()
    {
        int n = 5;
        long result = 1;
        for (int i = 1; i <= n; i++)
        {
            result = result * i;
        }
        Console.WriteLine($"Factorial of {n} is: {result}");
    }

    static void fibonacci()
    {
        Console.WriteLine("Fibonacci Series up to the 10th term:");
        int firstTerm = 0;
        int secondTerm = 1;
        Console.WriteLine($"{firstTerm} {secondTerm} ");
        for (int i = 2; i < 10; i++)
        {
            int nextTerm = firstTerm + secondTerm;
            Console.WriteLine($"{nextTerm} ");
            firstTerm = secondTerm;
            secondTerm = nextTerm;
        }
    }

    static void breakexample()
    {
        Console.WriteLine("Breaking the Loop when 5 :");
        for (int i = 1; i <= 10; i++)
        {
            Console.WriteLine($"{i} ");
            if (i == 5)
            {
                Console.WriteLine("Exiting the loop.");
                break; 
            }
        }
    }

    static void LargestofthreeNumbers()
    {
        int a = 10, b = 5, c = 8;
        int largest = a;
        if (b > largest)
        {
            largest = b;
        }
        if (c > largest)
        {
            largest = c;
        }
        Console.WriteLine($"The largest number among {a}, {b}, and {c} is: {largest}");
    }

    static void displaymessage()
    {
        string status = "success";
        switch (status)
        {
            case "success":
                Console.WriteLine("successfull");
                break;

            case "warning":
                Console.WriteLine("Warning!!!");
                break;

            case "error":
                Console.WriteLine("Error");
                break;

            default:
                Console.WriteLine("Unknown");
                break;
        }
    }

}


 
