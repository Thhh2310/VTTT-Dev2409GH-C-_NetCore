namespace Lab04_5
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8; 

            Car myCar = new Car();

            Console.WriteLine("Calling myCar.Start()");
            myCar.Start();

            Console.WriteLine("Calling myCar.TurnLeft()");
            myCar.Turnleft();

            Console.WriteLine("Calling myCar.Accelerate()");
            myCar.Accelerate();

            Console.ReadLine();
        }
    }
}
