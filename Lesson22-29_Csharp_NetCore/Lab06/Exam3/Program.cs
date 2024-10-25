namespace Exam3
{
    internal class Program
    {
        /// <summary>
        /// --khởi tạo một list danh sách 10 car
        /// --xoá các car có màu red
        /// --in danh sách các car
        /// </summary>
        /// <param name="args"></param>
        static void Main(string[] args)
        {
            //Xuất unicode
            Console.OutputEncoding = System.Text.Encoding.UTF8;

            //Khởi tạo
            List<Car> cars = new List<Car>()
            {
                new Car("Toyota ", "red"),
                new Car("Ford ", "blue"),
                new Car("Volkswagen ", "yellow"),
                new Car("Honda ", "red"),
                new Car("Chevrolet ", "green"),
                new Car("Mercedes-Benz ", "red"),
                new Car("BMW ", "black"),
                new Car("Hyundai ", "white"),
                new Car("Nissan ", "red"),
                new Car("Kia ", "pink")
            };
            //in ra danh sách car
            Console.WriteLine("===DANH SÁCH CAR===");
            foreach (var car in cars)
            {
                Console.WriteLine(car);
            }


            //Xoá Car có màu red
            cars.RemoveAll(car => car.Color.Equals("red", StringComparison.OrdinalIgnoreCase));
            Console.WriteLine("\n==Danh sách sau khi xoá car màu đỏ==");
            foreach (var car in cars)
            {
                Console.WriteLine(car);
            }    
        }
    }
}
