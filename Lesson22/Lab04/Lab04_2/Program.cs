namespace Lab04_2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //khởi tạo sinh viên cao đẳng và in ra thông tin
            Console.WriteLine("Student of College: ");
            StudentCollege sv1 = new StudentCollege("Hạnh", 1992, 9.5, 8, 7);
            sv1.Display();
            Console.WriteLine("Average of score: {0}", sv1.Average());

            //Khởi tạo sinh viên đại học và in ra thông tin
            Console.WriteLine("Student of University: ");
            StudentUniversity sv2 = new StudentUniversity("Thanh", 1990, 6, 8, 7, 9);
            sv2.Display();
            Console.WriteLine("Average of score: {0}", sv1.Average());
        }
    }
}
