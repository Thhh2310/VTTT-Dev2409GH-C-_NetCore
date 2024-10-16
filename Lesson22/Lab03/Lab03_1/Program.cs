namespace Lab03_1
{
    internal class Program
    {

        /// <summary>
        /// BÀI 3.1
        /// Minh hoạ việc khởi tạo đối tượng, truy cập các trường và phương thức
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //tạo đối tượng Car
            Car myCar = new Car();
            //gán giá trị cho các trường của đối tượng
            myCar.make = "Toyota";
            myCar.model = "MR2";
            myCar.color = "blue";
            myCar.year = 1995;

            //Hiển thị thông tin về đối tượng myCar
            System.Console.WriteLine("Thông tin chi tiết:");
            System.Console.WriteLine("Make: " + myCar.make);
            System.Console.WriteLine("Model: " + myCar.model);
            System.Console.WriteLine("Color: " + myCar.color);
            System.Console.WriteLine("Year: " + myCar.year);

            //gọi các phương thức
            myCar.Start();
            myCar.Stop();
        }
    }
}
