namespace ex1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            Employee e = new Employee();
            e.id = 1;
            e.name = "Test";
            e.salaryLevel = 10;
            e.basicSalary = 30;
            e.Display();
            double Income = e.GetInCome();
            Console.WriteLine("Thu nhập: " + Income);
            Console.ReadKey();
        }
    }
}
