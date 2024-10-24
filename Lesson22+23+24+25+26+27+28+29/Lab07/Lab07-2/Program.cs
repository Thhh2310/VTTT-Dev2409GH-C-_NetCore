using Business;
using Business.Dealership;
namespace Lab07_2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //tạo mới đối tượng House trong namespace Business
            //bạn có thể using ở trên đầu tập tin để viết ngắn gọn hơn
            House h = new House();
            //gán thông tin
            h.HouseNo = "D29756";
            h.Price = 100000;
            //in thông tin
            Console.WriteLine("House Detail");
            Console.WriteLine("\t HouseNo: " + h.HouseNo);
            Console.WriteLine("\t Price: " + h.Price);

            //tạo mới đối tượng Car trong namespace Business.Dealership
            //bạn có thể using trên đầu tập tin để viết ngắn gọn hơn
            Car c = new Car();
            c.CarNo = "A0999";
            c.Price = 100;
            //in thông tin
            Console.WriteLine("Car detail");
            Console.WriteLine("\t CarNo: " + c.CarNo);
            Console.WriteLine("\t Price: " + c.Price);
        }
    }
}
