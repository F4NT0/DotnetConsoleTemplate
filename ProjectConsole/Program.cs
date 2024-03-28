namespace ProjectConsole;
public class Program
{
    static void Main(string[] args)
    {
        string test = GetHelloWorld();
        Console.WriteLine(test);
    }

    public static string GetHelloWorld()
    {
        return "Hello World!";
    }
}